cr<-read.csv("E:/datasets/CreditRisk.csv")
head(cr)
tail(cr)
dim(cr)
colnames(cr)
rownames(cr)
cr$ApplicantIncome
mean(cr$ApplicantIncome)
median(cr$ApplicantIncome)
max(cr$ApplicantIncome)
min(cr$ApplicantIncome)
5849 %in% (cr$ApplicantIncome)
match(5849,cr$ApplicantIncome)
View(cr)
cr1<-cr(cr$Gender=="Male")
library(dplyr)

df1<-filter(cr,cr$Gender=="Male" & cr$Education=="Graduate" & cr$ApplicantIncome>2000)
View(df1)
#To Display count 
table(cr$Credit_History,cr$Loan_Status,cr$Gender)
table(cr$Credit_History,cr$Loan_Status,cr$Gender=="Female")
table(cr$Credit_History,cr$Loan_Status,cr$Gender=="Male")
table(cr$Property_Area,cr$Loan_Status)
#mutate function is for converting non numeric column into numeric
cr=  mutate(cr,Gender1=ifelse(Gender=="Male",0,1))
cr
View(cr)
cr=mutate(cr,Gender=ifelse(Gender=="Male",0,1))
View(cr)
cr=mutate(cr,Education=ifelse(Education=="Graduate",1,0))
View(cr)
cr=mutate(cr,Self_Employed=ifelse(Self_Employed=="No",0,1))
cr=mutate(cr,Married=ifelse(Married=="No",0,1))
cr=mutate(cr,Loan_Status=ifelse(Loan_Status=="No",0,1))
View(cr)
cr=mutate(cr,newarea=ifelse(Property_Area=="Urban" ,2, ifelse(Property_Area=="Rural",0,1)))

View(cr)
dim(cr)
# na.strings convert blanks into null i.e. NA
cr<-read.csv("E:/datasets/CreditRisk.csv",na.strings = "")
View(cr)
colnames(cr)



#is.na() Function to find null present or not if yes True otherwise False
is.na(cr)
#colsums()function is used to count how many Null present in each column
colSums(is.na(cr))

#na.omit function use to Remove Null
cr1<-na.omit(cr)
View(cr1)
#Guidelines for Null->Numeric=Mean,Median  2)Label->Most_Frequent i.e.Mode

table(cr$Credit_History)
table(cr$Gender)
cr=read.csv()
cr<-read.csv("E:/datasets/CreditRisk.csv",na.strings = "")
#gives Null from Gender column
cr$Gender[is.na((cr$Gender))]
#Replace null with Male in Gender Column
cr$Gender[is.na(cr$Gender)] <-"Male"
#Gives Null from Dataset
colSums((is.na(cr)))
