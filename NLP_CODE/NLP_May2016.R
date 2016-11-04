msg<-read.csv("/Users/happyrabbit/Documents/Hui/Project/NLP/CleanData/selectedMSG.csv")
#str(msg)
summary(msg$user_location)
content<-as.character(msg$content)
tes<-content[1:2]
anno_tes<-annotateString(tes)
str(anno_tes)
table(anno_tes$token$sentence)

anno_res$sentence 
#install.packages("coreNLP")
#downloadCoreNLP()
#install.packages("mallet")
library(coreNLP)
initCoreNLP()
content1<-content[1:100]
annotres1<-annotateString(content1)
#setwd("/Users/happyrabbit/Documents/Hui/Project/NLP/Results")
#save(annotres1,file="annotres1.RData")
content2<-content[101:200]
annotres2<-annotateString(content2)
#setwd("/Users/happyrabbit/Documents/Hui/Project/NLP/Results")
#save(annotres2,file="annotres2.RData")
content3<-content[201:300]
annotres3<-annotateString(content3)
#table(annotres3$token$Speaker)
#setwd("/Users/happyrabbit/Documents/Hui/Project/NLP/Results")
#save(annotres3,file="annotres3.RData")

content4<-content[301:400]
annotres4<-annotateString(content4)
#head(annotres4$token)
#setwd("/Users/happyrabbit/Documents/Hui/Project/NLP/Results")
#save(annotres4,file="annotres4.RData")

content5<-content[401:543]
annotres5<-annotateString(content5)
#head(annotres5$token)
#setwd("/Users/happyrabbit/Documents/Hui/Project/NLP/Results")
#save(annotres5,file="annotres5.RData")

#Some others related notes
#sessionInfo()
#library(rJava)
#library(mallet) 
#Sys.setenv(JAVA_HOME = '/Library/Java//Home')
#.jinit()
#.jcall("java/lang/System","S","getProperty","java.version")
#Sys.getenv('JAVA_HOME')
#Sys.getenv('LD_LIBRARY_PATH')
#home brew
#brew update 
#brew cask install java