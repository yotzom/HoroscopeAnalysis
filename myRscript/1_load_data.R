require(data.table)
#load data 

d_main <- fread('./data/step1_data.csv', sep = ",")

#system.time(d_main_test <- read.csv("./data/user_data_public.csv", sep = ",", stringsAsFactors = FALSE))
#read.csv : cost 103 sec
#fread : cost 20 sec