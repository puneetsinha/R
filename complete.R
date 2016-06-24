complete<-function(directory,id=1:322){
      id_len<-length(id)
      complete_data<-rep(0,id_len)
      
      all_files<-as.character(list.files(directory))
      file_paths<-paste(directory,"/",all_files,sep="")
      
      J<-1
      
      for(i in id){
            current_file<-read.csv(file_paths[i],header=TRUE,sep=",")
            complete_data[J]<- sum(complete.cases(current_file))
            J<-J+1
      }
      result<-data.frame(id=id,nobs=complete_data)
      return(result)
  
  
}
complete("specdata", 1)
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 30:25)
