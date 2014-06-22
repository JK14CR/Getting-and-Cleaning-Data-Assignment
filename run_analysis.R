#1. Assume all files are available in the working directory and load them in R
#2. Concatenate columns from subject and activity files (subject and y), add names
temp_test1<-read.table("subject_test.txt")
temp_test2<-read.table("y_test.txt")
temp_test3<-read.table("X_test.txt", header=FALSE)
temp_test4<-cbind(temp_test1,temp_test2)
names(temp_test4)<-c("subjectID","activity")


temp_train1<-read.table("subject_train.txt")
temp_train2<-read.table("y_train.txt")
temp_train3<-read.table("X_train.txt", header=FALSE)
temp_train4<-cbind(temp_train1,temp_train2)
names(temp_train4)<-c("subjectID","activity")


#3. Create vector with feature names and logical vector indicating positon of mean and std columns
#4. Label column names in data sets created from X files

names<-as.character(read.table("features.txt")[,2])

columns_selection<-grepl('mean\\(\\)|std\\(\\)',names)

names<-make.names(names, unique = FALSE, allow_ = TRUE)
names(temp_test3)<-names
names(temp_train3)<-names

#5. Merge the two intermediary sets (separately subject and activity set, separately features set for test and train)
#6. Extract the required columns (mean and std cols) from the features set, based on logical vector from 3. 

step1_set<-rbind(temp_test4,temp_train4)
step2_set<-rbind(temp_test3,temp_train3)
step3_set<-step2_set[,columns_selection==1]

#7. Concatenate remaining columns in both sets
complete_data<-cbind(step1_set,step3_set)

#8. Calculate mean for each column, by subject and activity 
library(plyr)
tidy<-ddply(complete_data,.(subjectID,activity), function(complete_data) sapply(complete_data[,3:ncol(complete_data)],mean)) 

#9. Clean up the names in final set 
names(tidy)<-gsub("\\.","",names(tidy))
names(tidy)<-gsub("mean","Mean",names(tidy))
names(tidy)<-gsub("std","Std",names(tidy))

#10. Rename activity code (there is probably a more elegant way to do it in R)
activ<-read.table("activity_labels.txt")

for (i in 1:6) {
tidy$activity[tidy$activity==i]<-as.character(activ[i,2]) }

#11. Write results to a text file
write.table(tidy,"GCD_project_result.txt",sep="\t",row.names=FALSE)

#12. 66 variables and 180 records in the text file. 
#13. For detailed explanation, check README.MD 





