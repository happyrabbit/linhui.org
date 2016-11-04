library(shiny)
library(coreNLP)
library(wordcloud)
library(tm)
library(NLP)
initCoreNLP()
msg<-read.csv("/Users/happyrabbit/Documents/Hui/Project/NLP/CleanData/msg15_phi.csv")
content<-as.character(msg$content)

content1<-content[1:100]
annotres1<-annotateString(content1)
#setwd("/Users/happyrabbit/Documents/Hui/Project/NLP/Results")
#save(annotres1,file="annotres_PHI1.RData")

content2<-content[101:200]
annotres2<-annotateString(content2)
#setwd("/Users/happyrabbit/Documents/Hui/Project/NLP/Results")
#save(annotres2,file="annotres_PHI2.RData")
content3<-content[201:300]
annotres3<-annotateString(content3)
#table(annotres3$token$Speaker)
#setwd("/Users/happyrabbit/Documents/Hui/Project/NLP/Results")
save(annotres3,file="annotres_PHI3.RData")

content4<-content[301:400]
annotres4<-annotateString(content4)
#head(annotres4$token)
#setwd("/Users/happyrabbit/Documents/Hui/Project/NLP/Results")
#save(annotres4,file="annotres_PHI4.RData")

content5<-content[401:535]
annotres5<-annotateString(content5)
#head(annotres5$token)
#setwd("/Users/happyrabbit/Documents/Hui/Project/NLP/Results")
#save(annotres5,file="annotres_PHI5.RData")

channel
small brand names
