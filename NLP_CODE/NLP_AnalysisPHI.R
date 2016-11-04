library(car)
library(coreNLP)
setwd("/Users/happyrabbit/Documents/Hui/Project/NLP/Results")
load("annotres_PHI1.RData")
load("annotres_PHI2.RData")
load("annotres_PHI3.RData")
load("annotres_PHI4.RData")
load("annotres_PHI5.RData")

token1<-data.frame(annotres1$token)
token2<-data.frame(annotres2$token)
token3<-data.frame(annotres3$token)
token4<-data.frame(annotres4$token)
token5<-data.frame(annotres5$token)
ptree1<-getParse(annotres1)
dep1<-getDependency(annotres1)
##----------------
idx1<-which(token1$POS=="NNP")
idx2<-which(token1$NER%in%c("ORGANIZATION","PERSON"))
idx<-union(idx1,idx2)
##----------------
words1<-tolower(token1[idx,]$token)
##----------------
idx1<-which(token2$POS=="NNP")
idx2<-which(token2$NER%in%c("ORGANIZATION","PERSON"))
idx<-union(idx1,idx2)
##----------------
words2<-tolower(token2[idx,]$token)


##----------------
idx1<-which(token3$POS=="NNP")
idx2<-which(token3$NER%in%c("ORGANIZATION","PERSON"))
idx<-union(idx1,idx2)
##----------------
words3<-tolower(token3[idx,]$token)
##----------------
idx1<-which(token4$POS=="NNP")
idx2<-which(token4$NER%in%c("ORGANIZATION","PERSON"))
idx<-union(idx1,idx2)
##----------------
words4<-tolower(token4[idx,]$token)
##----------------
idx1<-which(token5$POS=="NNP")
idx2<-which(token5$NER%in%c("ORGANIZATION","PERSON"))
idx<-union(idx1,idx2)
##----------------
words5<-tolower(token5[idx,]$token)
tw<-table(c(words1,words2,words3,words4,words5))
idx<-which(tw>2)
tw2<-data.frame(sort(tw[idx],decreasing = T))
nodes<-tw2[1:10,]
nodes$group<-rep(1,10)
#  Var1 Freq
library(networkD3)
source<-as.character(rep(nodes$Var1[1],9))
target<-as.character(nodes$Var1[2:10])
link<-data.frame(cbind(source,target))
link$value<-nodes$Freq[2:10]

data(MisLinks, MisNodes)
brand<-c("Agrigold","Augusta","Beck","Becks","Champion","Channel",
         "Deere","Dekalb","DeKalb","DuPont","Monsanto","Pioneer","Wyffels")
nodes
str(MisLinks)
str(MisNodes)
forceNetwork(Links = link, Nodes = nodes, Source = "source",
             Target = "target", Value = "value", NodeID = "Var1",
              Group="group",linkWidth=nodes$Freq,linkColour="green",opacity =1)

#names(annotres1$token)[3]<-"word"
#plot(annotres1,1)
#plot(annotres1,3)
#str(annotres1)
#sort(tt<-table(subset(token1, NER=="ORGANIZATION")$lemma),decreasing = T)
#sort(tt<-table(subset(token1, NER=="LOCATION")$lemma),decreasing = T)
#names(tt)
#sort(table(subset(annotres5$token, POS=="NNP")$lemma),decreasing = T)
#head(dep1)
#idx<-which(token1$POS=="JJR")
#tail(token1,500)
which(token1$token=="beck")

words<-tolower(token1[idx,]$token)
tw<-table(words)
names(tw)
idx<-which(tw>2)
names(tw[idx])
brand<-c("Agrigold","Augusta","Beck","Becks","Champion","Channel",
         "Deere","Dekalb","DeKalb","DuPont","Monsanto","Pioneer","Wyffels")

"Ground"   "Iowa"     "Jerky"    "Loam"      "Muck"     "North"     "PTO"      "Sandy"    "Straw"   "Alberta"  

ind1<-which(token1$lemma[dep1$depIndex]%in%words)


dep_ind<-which(token1$lemma[dep1$depIndex]%in%c("encirca","Encirca","ENCIRCA"))
gov_ind<-which(token1$lemma[dep1$govIndex]%in%c("encirca","Encirca","ENCIRCA"))

ind1<-which(token1$lemma[dep1$depIndex]%in%c("corn"))
ind1<-which(token1$lemma[dep1$depIndex]%in%c("price"))

ind1<-which(token1$lemma[dep1$depIndex]%in%c("Pioneer", "Dupont","DuPont"))
ind1<-which(token1$lemma[dep1$depIndex]%in%c("Monsanto"))

ind2<-which(token1$lemma[dep1$depIndex]%in%c("Nitrogen","N","nitrogen"))

dep_encirca<-dep1[dep_ind,]
unique(dep_encirca$type)

dep_ind<-which(dep1$type=="nsubjpass")
dep_nsubjpass<-dep1[dep_ind,]
ent_nsubjpass<-NULL
for (i in seq_along(dep_ind)){
  idx<-sort(c(dep_nsubjpass$governorIdx[i],dep_nsubjpass$dependentIdx[i]))
  ll<-length(which(token1$sentence==dep_nsubjpass$sentence[i]))
  if(idx[1]<=10){
    idx2<-c(1:min(c(idx[2]+5,ll)))
  }
  else {
    idx2<-c((idx[1]-5):min(c(idx[2]+5,ll)))
  }
  cat(ent<-subset(token1,sentence==dep_nsubjpass$sentence[i])$token[idx2],"\n")
  ent_nsubjpass<-c(ent_nsubjpass,ent)
}

dep_encirca<-dep1[ind1,]

ent_encirca<-NULL
for (i in seq_along(dep_ind)){
  idx<-sort(c(dep_encirca$governorIdx[i],dep_encirca$dependentIdx[i]))
  ll<-length(which(token1$sentence==dep_encirca$sentence[i]))
  if(idx[1]<=10){
    idx2<-c(1:min(c(idx[2]+5,ll)))
  }
  else {
    idx2<-c((idx[1]-5):min(c(idx[2]+5,ll)))
  }
  cat(ent<-subset(token1,sentence==dep_encirca$sentence[i])$token[idx2],"\n")
  ent_encirca<-c(ent_encirca,ent)
}



##---------------


dep_n<-dep1[ind2,]
ent_n<-NULL
for (i in seq_along(ind2)){
  idx<-sort(c(dep_n$governorIdx[i],dep_n$dependentIdx[i]))
  idx2<-c(idx[1]:idx[2])
  cat(ent<-subset(token1,sentence==dep_n$sentence[i])$token[idx2],"\n")
  ent_n<-c(ent_n,ent)
}

head(token,50)
tencirca<-token1[which(token1$sentence%in%dep_encirca$sentence),]
words_n<-which(token1$sentence%in%dep_n$sentence)

ent_encirca[which(ent_encirca%in%c("Nitrogen","N","nitrogen"))]<-"Encirca"

library(wordcloud)
wordcloud(words=c(words_encirca,words_n),min.freq = 1,random.color = T,colors=rainbow(7))
org<-c(subset(annotres1$token, NER=="ORGANIZATION")$lemma,
       subset(annotres2$token, NER=="ORGANIZATION")$lemma,
       subset(annotres3$token, NER=="ORGANIZATION")$lemma,
       subset(annotres4$token, NER=="ORGANIZATION")$lemma,
       subset(annotres5$token, NER=="ORGANIZATION")$lemma)
table(org)
org[which(org%in%c("Pioneer", "Dupont","DuPont"))]<-"DuPont_Pioneer"
tt<-table(org)
wordcloud(words=names(tt),freq=tt,min.freq = 3,random.order=F,random.color = T,colors=rainbow(7))


head(token1)
che<-sort(token1$lemma)

which(sort(annotres5$token$lemma)%in%c("Nitrogen","N","nitrogen"))

che[6990:7000]
coref1<-getCoreference(annotres1)
head(annotres1$coref)
head(coref1)
head(token1)
table(token1$token[coref1$startIndex[coref1$corefId==3]])
##-----------------
senti2<-data.frame(annotres2$sentiment)
#senti[12,]
token2<-data.frame(annotres2$token)
#sort(table(subset(token1, NER=="ORGANIZATION")$lemma),decreasing = T)
ptree2<-getParse(annotres2)
dep2<-getDependency(annotres2)
#head(dep2)
ind2<-which(token2$lemma[dep2$depIndex]%in%c("encirca"))

#cat(ptree[1])
#plot(annotres1,1)
#table(token$sentence)
#token$token[token$sentence==171]
#str(token)
#table(token$id)
#which(senti$sentiment=="Verynegative")
##--------------Location
library(readr)
tp<-read_csv("/Users/happyrabbit/Documents/Hui/Project/NLP/RawData/newagtalk-20150607/topic.csv")
msg<-read_csv("/Users/happyrabbit/Documents/Hui/Project/NLP/RawData/newagtalk-20150607/message.csv")
head(tp)
year<-substr(tp$posted_at,1,4)
##------------clean location
location<-tp$user_location
##--------------------
tp$location<-location
idx<-which(year%in%c("2014","2015"))
##---------------------2014 & 2015 
tp1<-tp[idx,]
sort(table(tp1$user_name),decreasing = T)[1:20]
sort(table(tp1$location),decreasing = T)[1:100]


