sum_na_list <- apply(d_main, 2, function(x){
  sum(is.na(x))
})

#the old function (version 2), its undone, and it also fucking stupid

# var_name_list <- names(d_main)
# max_null <- 1
# total_null <- 0
# deleted <- c()
# for (i in var_name_list) {
#   tmp <- sum(is.na(d_main$q16))
#   total_null <- total_null + tmp
#   
#   cat(sum(is.na(paste0("d_main$", i))))
#   # if(tmp >= max_null){
#   #   cat(i,"  must to deleted\n")
#   #   deleted <- c(deleted, i)
#   # }
#   # tmp <- 0
# }
# remove(i, max_null, tmp, var_name_list)

#-----------------------------------------------------
#the old function (version 1), its so fucking stupid

# has_answer_field <- 0
# 
# deleted_col <- c()
# for (col_count in 1:2625){
#   for (row_count in 1:68371) {
#     if(!is.na(d_main[row_count, col_count])){
#       has_answer_field = has_answer_field + 1
#     }else{
#       if(row_count == 68371 && has_answer_field <= 1000){
#         deleted_col <- c(deleted_col, col_count)
#         cat("End Row:", row_count, " \t")
#         cat(col_count , "must be deleted\n")
#       }
#     }
#   }
#   has_answer_field <- 0
# }