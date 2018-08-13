#remove no horoscope row

#change "-"(null value) to NA
d_main$d_astrology_sign[d_main$d_astrology_sign == "-"] <- NA

#count NA of d_astrology_sign
sum(is.na(d_main$d_astrology_sign))

#2 way to remove NA rows
#test1 <- d_main[na.omit(d_main$d_astrology_sign),]
d_main <- d_main[complete.cases(d_main$d_astrology_sign),]
