# Load libraries
library(coreNLP)
initCoreNLP() # change this if downloaded to non-standard location

OUTDIR = "../img/ch09/"
dir.create(OUTDIR, FALSE, TRUE)
options(width=70)

#########################################
# Tokenization & Sentence Splitting
# Albert Camus's l'Étranger
# Aujourd'hui, maman est morte. Ou peut-être hier, je ne sais pas. J'ai reçu un télégramme de l'asile.

strIn = "Mother died today. Or, maybe, yesterday; I can't be sure."
strIn<-c("They're very useful.",
         "i am very happy.",
         "it doesn't work well.",
         "It works well.",
         "I don't love you!",
         "I don't hate you!",
         "I don't like you.",
         "i like you.")

strList<-strsplit(strIn, split=" ")

annotation = annotateString(strIn)
str(annotation)

annotation$sentiment
getToken(annotation)
getToken(annotation)$sentence

#anno = annotateFile("../data/ch09/holmes/01_a_scandal_in_bohemia.txt")
anno = readRDS("/Users/happyrabbit/Documents/Hui/Project/NLP/ch09/holmes_anno/01_a_scandal_in_bohemia.Rds")
head(getToken(anno))
sentLen = table(getToken(anno)$sentence)
plot(anno,5)
#pdf(paste0(OUTDIR, "sentDistribution.pdf"), 8, 4)
#par(mar=c(4,4,2,1))
#hist(sentLen,breaks=30)
#dev.off()

#########################################
# Lemmatization and POS Tagging
token = getToken(anno)
token[token$sentence==2,c(1:4,7)]

table(token$POS)
# Maps a character string of English Penn TreeBank part of speech tags 
# into the universal tagset codes. This provides a reduced set of tags (12), 
# and a better cross-linguist model of speech.
ut = universalTagset(token$POS)
table(ut)
unique(token$POS[ut == "NOUN"])
unique(token$POS[ut == "VERB"])

nounCnt = tapply(ut == "NOUN", token$sentence, sum)
pronCnt = tapply(ut == "PRON", token$sentence, sum)
adjCnt = tapply(ut == "ADJ", token$sentence, sum)
verbCnt = tapply(ut == "VERB", token$sentence, sum)
posDf = data.frame(nounCnt,pronCnt,adjCnt,verbCnt)
head(posDf)

pdf(paste0(OUTDIR, "posScatter.pdf"), 8, 4)
par(mar=c(4,4,2,1))
par(mfrow=c(1,2))
plot(nounCnt+pronCnt,adjCnt,pch=19,cex=2,col=rgb(0,0,1,0.02),xlim=c(0,13),ylim=c(0,13),asp=1)
plot(nounCnt+pronCnt,verbCnt,pch=19,cex=2,col=rgb(0,0,1,0.02),xlim=c(0,13),ylim=c(0,13),asp=1)
dev.off()

index = which(ut=="NOUN")
tab = table(token$lemma[index])
head(sort(tab,decreasing=TRUE),25)

index = which(token$POS == "NNP")
tab = table(token$lemma[index])
head(sort(tab,decreasing=TRUE),25)

#########################################
# Dependency
parseTree = getParse(anno)
length(parseTree)
cat(parseTree[1])

dep = getDependency(anno)
dep[dep$sentence == 1,]

#pdf(paste0(OUTDIR, "sentDiagram.pdf"), 8, 4)
#par(mar=c(0,0,0,0))
plot(anno,5)
#dev.off()

index = which(token$lemma[dep$depIndex] == "I")
depSelf = dep[index,]
depSelf = depSelf[depSelf$type == "nsubj",]
sort(table(depSelf$governor),decreasing=TRUE)[1:10]
head(token)
index = which(dep$type == "nn" &
                token$POS[dep$govIndex] == "NNP" &
                token$POS[dep$depIndex] == "NNP" &
                (toupper(token$word) != token$word)[dep$govIndex] &
                (toupper(token$word) != token$word)[dep$depIndex])
nnDep = dep[index,]

pname = startIndex = endIndex = NULL
for (g in unique(nnDep$govIndex)) {
  these = c(which(nnDep$depIndex == g),
            which(nnDep$govIndex == g))
  these = range(c(nnDep$depIndex[these],nnDep$govIndex[these]))
  out = paste(token$word[these[1]:these[2]],collapse=" ")
  pname = c(pname, out)
  startIndex = c(startIndex, these[1])
  endIndex = c(endIndex, these[2])
}
pnames = data.frame(pname,startIndex,endIndex,stringsAsFactors=FALSE)
unique(pnames$pname)

#########################################
# NER

token = getToken(anno)
table(token$NER)

unique(token$lemma[token$NER=="LOCATION"])

# Example date
token[485:490,]

# Example time
token[6991:6994,]

these = which(token$NER == "PERSON")
pnames = pnames[which(pnames$endIndex %in% these),]
these = these[-which(these %in% pnames$endIndex)]
newPnames = data.frame(pname=token$word[these],
                       startIndex=these,
                       endIndex=these,
                       stringsAsFactors=FALSE)
pnames = rbind(pnames,newPnames)
pnames = pnames[toupper(pnames$pname) != pnames$pname,]
length(unique(pnames$pname))

pnames$pname = gsub("Mister", "Mr.", pnames$pname)
for (j in 1:nrow(pnames)) {
  matchString = gsub(" ", "[^.]*", pnames$pname[j])
  these = grep(matchString,pnames$pname)
  pnamesSet = pnames$pname[these]
  pnames$pname[j] = pnamesSet[which.max(nchar(pnamesSet))]
}
unique(pnames$pname)

#########################################
# Coreference

coref = getCoreference(anno)
head(coref)

table(token$word[coref$startIndex[coref$corefId == 1]])

index = match(as.numeric(coref$endIndex), pnames$endIndex)
head(index)

temp = tapply(pnames$pname[index[!is.na(index)]],
              coref[!is.na(index),1],
              function(v) {names(rev(sort(table(v))))[1]} )
perMap = data.frame(corefId=names(temp),perName=temp)
perMap

tab = table(coref[,1])
index = match(perMap$corefId, names(tab))
perMap$count = tab[index]
charImport = sort(tapply(perMap$count, perMap$perName, sum),TRUE)
charImport


#########################################
# Case study

output = c()
for (f in dir("../data/ch09/holmes_anno",full.names=TRUE)) {
  #anno = annotateFile(file=f)
  anno = readRDS(f)
  token = getToken(anno)
  these = which(token$NER == "PERSON")
  pname = names(which.max(table(token$lemma[these])))
  output = c(output, pname)
}

# Annotate all, for easy of use, sherlock holmes texts:
dir.create("../data/ch09/holmes_anno",showWarnings=FALSE)
for (f in dir("../data/ch09/holmes",full.names=TRUE)) {
  fout = gsub("\\.txt", ".Rds", gsub("/holmes/", "/holmes_anno/", f))
  obj = annotateFile(file=f)
  saveRDS(obj, fout)
  cat("Done with:", basename(f), "\n")
}

output = c()
outputGraphics = list()
iter = 1
for (f in dir("../data/ch09/holmes_anno",full.names=TRUE)) {
  anno = readRDS(f)
  token = getToken(anno)
  dep = getDependency(anno)
  coref = getCoreference(anno)
  
  # Dependency part
  index = which(dep$type == "nn" &
                  token$POS[dep$govIndex] == "NNP" &
                  token$POS[dep$depIndex] == "NNP" &
                  (toupper(token$word) != token$word)[dep$govIndex] &
                  (toupper(token$word) != token$word)[dep$depIndex])
  nnDep = dep[index,]
  
  pname = startIndex = endIndex = NULL
  for (g in unique(nnDep$govIndex)) {
    these = c(which(nnDep$depIndex == g),
              which(nnDep$govIndex == g))
    these = range(c(nnDep$depIndex[these],nnDep$govIndex[these]))
    index = these[1]:these[2]
    words = token$word[index][token$POS[index] != "." &
                                token$NER[index] %in% c("O","PERSON")]
    out = paste(words,collapse=" ")
    pname = c(pname, out)
    startIndex = c(startIndex, these[1])
    endIndex = c(endIndex, these[2])
  }
  pnames = data.frame(pname,startIndex,endIndex,stringsAsFactors=FALSE)
  
  # NER
  these = which(token$NER == "PERSON")
  pnames = pnames[which(pnames$endIndex %in% these),]
  these = these[-which(these %in% pnames$endIndex)]
  newPnames = data.frame(pname=token$word[these],
                         startIndex=these,
                         endIndex=these,
                         stringsAsFactors=FALSE)
  pnames = rbind(pnames,newPnames)
  pnames = pnames[toupper(pnames$pname) != pnames$pname,]
  length(unique(pnames$pname))
  
  pnames$pname = gsub("Mister", "Mr.", pnames$pname)
  for (j in 1:nrow(pnames)) {
    matchString = gsub(" ", "[^.]*", pnames$pname[j])
    these = grep(matchString,pnames$pname)
    pnamesSet = pnames$pname[these]
    pnames$pname[j] = pnamesSet[which.max(nchar(pnamesSet))]
  }
  
  index = match(as.numeric(coref$endIndex), pnames$endIndex)
  temp = tapply(pnames$pname[index[!is.na(index)]],
                coref[!is.na(index),1],
                function(v) {names(rev(sort(table(v))))[1]} )
  perMap = data.frame(corefId=names(temp),perName=temp)
  
  tab = table(coref[,1])
  index = match(perMap$corefId, names(tab))
  perMap$count = tab[index]
  charImport = sort(tapply(perMap$count, perMap$perName, sum),TRUE)
  removeThese = c(grep("Sherlock", names(charImport)),
                  grep("Holmes", names(charImport)),
                  grep("Watson", names(charImport)))
  if (length(removeThese)) charImport = charImport[-removeThese]
  output = c(output, names(charImport)[1])
  
  crefIds = perMap$corefId[perMap$perName == names(charImport)[1]]
  places = coref$startIndex[coref$corefId %in% crefIds]
  outputGraphics[[iter]] = places / nrow(token)
  iter = iter + 1
}
output = gsub(" ,", ",", output)


pdf(paste0(OUTDIR, "characterApperance.pdf"), 5, 7)
par(mar=c(0,0,0,0))
plot(0,0,col="white",ylim=c(1,56),xlim=c(0,1),axes=FALSE)
for (j in 1:length(outputGraphics)) {
  points(outputGraphics[[j]],rep(57-j,length(outputGraphics[[j]])),
         pch=19, cex=0.4)
  abline(h=j)
}
rect(-100,-100,0.005,100,bg="white",density=NA,col="white")
rect(0.995,-100,100,100,bg="white",density=NA,col="white")
text(-.015,1:56,sprintf("%02d",56:1),cex=0.5)
box()
dev.off()
