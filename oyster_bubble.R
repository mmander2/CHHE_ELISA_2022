library(ggplot2)
library(ggmap)
library(dplyr)
# MCY oyster
oyster_toxin<-read.csv("oyster_chhe3.csv",sep = ",",header = TRUE)
Date<- oyster_toxin$date
Site<-oyster_toxin$site
Toxin<- oyster_toxin$toxin
label_express <- expression(Ave~ng~MCY~g^-1~tissue)
date_label <-c("2021-06-04"=" 4-Jun", "2021-06-15"= ' 15-Jun','2021-07-02'='2-Jul', '2021-07-16'='16-Jul','2021-07-30'= '30-Jul', '2021-08-15'='15-Aug', '2021-08-27'='26-Aug', '2021-09-10'='10-Sep', '2021-09-24'='24-Sep','2021-10-08'='8-Oct', '2021-10-22'='22-Oct','2021-11-05'='5-Nov', '2021-11-19'='19-Nov')
ggplot(oyster_toxin,aes(x=Date,y=Site))+ geom_point(aes(color=Site, size=Toxin))+ scale_x_discrete(labels=date_label) + scale_size_continuous(limits = c(0, 5), range = c(0,10), breaks = c(0,1,2,3,4,5))+ 
  guides(size=guide_legend(label_express)) + geom_text(aes(label=toxin),hjust=0.5, vjust=3)+
  guides(color = guide_legend(override.aes = list(size = 7)))+
  theme_classic(base_size = 12)+theme(legend.text= element_text(size=12))+
  theme(axis.text.x=element_text(colour="black"))+
  theme(axis.text.y=element_text(colour="black"))+
  theme(aspect.ratio = .4)+theme(legend.title = element_text(size=12))+theme(axis.title = element_text(size=12))+theme(axis.text =element_text(12))


  


#DA oyster

oyster_da<-read.csv("oyster_chhe_da.csv",sep = ",",header = TRUE)
Date<- oyster_da$dat
Sites<-oyster_da$site
Toxins<- oyster_da$toxin
labels_express <- expression(Ave~ng~DA~g^-1~tissue)
date_label <-c("2021-06-04"=" 4-Jun", "2021-06-15"= ' 15-Jun','2021-07-02'='2-Jul', '2021-07-16'='16-Jul','2021-07-30'= '30-Jul', '2021-08-15'='15-Aug', '2021-08-27'='26-Aug', '2021-09-10'='10-Sep', '2021-09-24'='24-Sep','2021-10-08'='8-Oct', '2021-10-22'='22-Oct','2021-11-05'='5-Nov', '2021-11-19'='19-Nov')
ggplot(oyster_da,aes(x=Date,y=Site)) +
  geom_point(aes(color=Sites, size=Toxins),alpha=10)+
  scale_x_discrete(labels=date_label) + scale_size_continuous(limits = c(0, 100), range = c(0,10), breaks = c(0,20,40,60,80,100))+
  guides(color = guide_legend(override.aes = list(size = 7)))+
  guides(size=guide_legend(labels_express))+ geom_text(aes(label=toxin),hjust=0.5, vjust=3)+
  theme_classic(base_size = 12)+theme(legend.text= element_text(size=12))+
  theme(axis.text.x=element_text(colour="black"))+
  theme(axis.text.y=element_text(colour="black"))+
  theme(aspect.ratio = .4)+theme(legend.title = element_text(size=12))+theme(axis.title = element_text(size=12))+theme(axis.text =element_text(12))




