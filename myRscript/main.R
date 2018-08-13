
setwd("C:/Users/CcYoTzom/Desktop/fuckingDatingData")

source("./myRscript/1_load_data.R")

source("./myRscript/2_remove_no_horoscope_row.R")

write.csv(x = d_main, file = "./data/step1_data.csv")

source("./myRscript/3_remove_null_var.R")

#check horoscope in whitch column
dataset_names <- names(d_main)
for (i in 1:length(dataset_names)){
  col_name <- dataset_names[i]
  if(col_name == "d_astrology_sign"){
    cat("d_astrology_sign in column:",i)
    remove(i, col_name)
    break
  } 
}

