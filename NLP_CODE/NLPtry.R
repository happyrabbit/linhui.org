library(tm)
library(MITIE)
help(MITIE)
# Load named entity extractor from disk
# Note: models can be downloaded from http://sourceforge.net/projects/mitie/files/binaries
# - e.g., http://sourceforge.net/projects/mitie/files/binaries/MITIE-models-v0.2.tar.bz2

ner_model_path <- "C:/Users/linhu/Documents/R/win-library/3.1/MITIE/MITIE-models/english/ner_model.dat"
ner <- NamedEntityExtractor$new(ner_model_path)

## What suggestions do you have to improve Pioneer's local branding, promotion, and advertising activities to better support your sales activities?  
txt <- read.csv('L:/MARKET ANALYSIS/Adhoc/FY15/Hui_Text_mining/RawData/message.csv')
txt1<-tolower(as.character(txt$content))

encirca<-txt1[grep("encirca",txt1)]
soy<-grep("soy",txt1)
soymsg<-txt[soy,]
soymsg$content[1:5]
setwd("L:/MARKET ANALYSIS/Adhoc/FY15/Hui_Text_mining/Co_Krishna")
write.csv(soymsg,"soymsg.csv",row.names=F)
##############################################################
# Print out what kind of tags this tagger can predict
tag_names <- ner$get_possible_ner_tags()
tag_names
#  [1] "PERSON"       "LOCATION"     "ORGANIZATION" "MISC"
# Prepare some data

tokens <- mitie_tokenize(encirca[1])
tokens
# Extract entities
entities <- ner$extract_entities(tokens)
i<-1
for (i in 1:length(entities)) {
  entity = entities[[i]]
  position = paste("(", entity$start, ",", entity$end, ")", sep="")
  text = paste(tokens[entity$start:entity$end], collapse=" ")
  print(paste(text, "/", tag_names[entity$tag], "@", position))
}

##############################################################################
## names(txt)

myCorpus<-Corpus(VectorSource(as.character(txt$content)))
myCorpus<-tm_map(myCorpus,tolower)
myCorpus<-Corpus(VectorSource(myCorpus))
myTdm<-DocumentTermMatrix(myCorpus,control=list(stemming=T, stopwords=T,minWordLength=3,
                                                removeNumbers=T,removePunctuation=T))

## The mean term frequency-inverse document frequency (tf-idf) over documents containing
## this term is used to select the vocabulary. This measure allows to omit terms which have
## low frequency as well as those occuring in many documents. We only include terms which have
## a tf-idf value of at least 0.1 which is a bit more than the median and ensures that the
## very frequent terms are omitted

library("slam")
dim(myTdm)
summary(col_sums(myTdm))
summary(myTdm$i)
summary(myTdm$j)
summary(myTdm$v)

term_tfidf<- tapply(myTdm$v/row_sums(myTdm)[myTdm$i], myTdm$j, mean) *log2(nDocs(myTdm)/col_sums(myTdm>0))
summary(term_tfidf)
myTdm<- myTdm[,term_tfidf >=0.1]
myTdm<- myTdm[row_sums(myTdm)>0,]
dim(myTdm)

library("topicmodels")
k<-30
SEED<-2015
srs_tm<-list(VEM = LDA(myTdm, k = k, control = list(seed = SEED)),
             VEM_fixed = LDA(myTdm, k = k,
                             control = list(estimate.alpha = FALSE, seed = SEED)),
             Gibbs = LDA(myTdm, k = k, method = "Gibbs",
                         control = list(seed = SEED, burnin = 1000, thin = 100, iter = 1000)),
             CTM = CTM(myTdm, k = k,
                       control = list(seed = SEED,var = list(tol = 10^-4), em = list(tol = 10^-3))))

Topic <- topics(srs_tm[["VEM"]], 1)
Terms <- terms(srs_tm[["VEM"]], 5)
Terms[,1:5]
