msg<-read.csv("/Users/happyrabbit/Documents/Hui/Project/NLP/RawData/message.csv",encoding = "latin1")
id1<-grep("encirca",tolower(msg$content))
id2<-grep("climate basic",tolower(msg$content))
id3<-grep("fieldscript",tolower(msg$content))
id4<-grep("360",tolower(msg$content))
id5<-grep("precision",tolower(msg$content))
id6<-grep("mapping",tolower(msg$content))
id<-unique(c(id1,id2,id3,id4,id5,id6))
sltmsg<-msg[id,]
setwd("/Users/happyrabbit/Documents/Hui/Project/NLP/CleanData")
write.csv(sltmsg,"selectedMSG.csv",row.names=F)

library(readr)
library(dplyr)
library(lubridate)
msg<-read_csv("/Users/happyrabbit/Documents/Hui/Project/NLP/RawData/newagtalk-20150607/message.csv")
msg<-data.frame(msg)
msg$year<-substr(msg$posted_at,1,4)

msg15<-msg%>%filter(year=="2015")

id1<-grep("Pioneer",msg15$content)
id2<-grep("pioneer",msg15$content)
id<-union(id1,id2)
msg15_phi<-msg15[id,]
summary(msg15_phi)

setwd("/Users/happyrabbit/Documents/Hui/Project/NLP/CleanData")
write.csv(msg15_phi,"msg15_phi.csv",row.names=F)