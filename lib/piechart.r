# count number of rows based on characteristic

# characteristic: race

r1 = nrow(anes_new_red[anes_new_red$race=='1. White non-Hispanic (1948-2012)',])
r2 = nrow(anes_new_red[anes_new_red$race=='2. Black non-Hispanic (1948-2012)',])
r3 = nrow(anes_new_red[anes_new_red$race=='5. Hispanic (1966-2012)',])
r4 = nrow(anes_new_red[anes_new_red$race=='6. Other or multiple races, non-Hispanic (1968-2012)',])
r5 = nrow(anes_new_red[anes_new_red$race=='3. Asian or Pacific Islander, non-Hispanic (1966-2012)',])
r6 = nrow(anes_new_red[anes_new_red$race=='4. American Indian or Alaska Native non-Hispanic (1966-2012)',])
r7 = nrow(anes_new_red[anes_new_red$race=='7. Non-white and non-black (1948-1964)',])

race.df <- data.frame(group = c("white", "black", "hispanic", "other/multiple", "asian/pacific islander", "American indian/Alaska native", "non-white and non-black"), value = c(r1, r2, r3, r4,r5,r6,r7))

race.bp<- ggplot(race.df, aes(x="", y=value, fill=group))+
geom_bar(width = 1, stat = "identity")

pie <- race.bp + coord_polar("y", start=0)+ scale_fill_brewer(palette="Set3")
pie


