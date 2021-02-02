# count number of rows based on characteristic

# characteristic: race

r1 = nrow(anes_new1[anes_new1$race=='1. White non-Hispanic (1948-2012)',])
r2 = nrow(anes_new1[anes_new1$race=='2. Black non-Hispanic (1948-2012)',])
r3 = nrow(anes_new1[anes_new1$race=='5. Hispanic (1966-2012)',])
r4 = nrow(anes_new1[anes_new1$race=='6. Other or multiple races, non-Hispanic (1968-2012)',])
r5 = nrow(anes_new1[anes_new1$race=='3. Asian or Pacific Islander, non-Hispanic (1966-2012)',])
r6 = nrow(anes_new1[anes_new1$race=='4. American Indian or Alaska Native non-Hispanic (1966-2012)',])
r7 = nrow(anes_new1[anes_new1$race=='7. Non-white and non-black (1948-1964)',])

race.df <- data.frame(group = c("white", "black", "hispanic", "other/multiple", "asian/pacific islander", "American indian/Alaska native", "non-white and non-black"), value = c(r1, r2, r3, r4,r5,r6,r7))

race.bp<- ggplot(race.df, aes(x="", y=value, fill=group))+
geom_bar(width = 1, stat = "identity")

pie <- race.bp + coord_polar("y", start=0)+ scale_fill_brewer(palette="Set3")
pie


#characteristic: region
nreg1 <- nrow(anes_new2[anes_new2$region=='1. Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)',])
nreg2 <- nrow(anes_new2[anes_new2$region=='2. North Central (IL, IN, IA, KS, MI, MN, MO, NE, ND,',])
nreg3 <- nrow(anes_new2[anes_new2$region=='3. South (AL, AR, DE, D.C., FL, GA, KY, LA, MD, MS, NC',])
nreg4 <- nrow(anes_new2[anes_new2$region=='4. West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA,',]) 
#reg5 <- anes_new2[anes_new2$region=='',] 

reg.df <- data.frame(group = c("Northeast", "North Central", "South", "West"), value = c(nreg1, nreg2, nreg3, nreg4))

reg.bp<- ggplot(reg.df, aes(x="", y=value, fill=group))+
geom_bar(width = 1, stat = "identity")

pie2 <- reg.bp + coord_polar("y", start=0)+ scale_fill_brewer(palette="Set2")
pie2

# characteristic: work status

nw1 <- nrow(anes_new3[anes_new3$work=='1. Working now',])
nw2 <- nrow(anes_new3[anes_new3$work=='2. Temporarily laid off',])
nw4 <- nrow(anes_new3[anes_new3$work=='4. Unemployed',])
nw5 <- nrow(anes_new3[anes_new3$work=='5. Retired',])
nw6 <- nrow(anes_new3[anes_new3$work=='6. Permanently disabled',])
nw7 <- nrow(anes_new3[anes_new3$work=='7. Homemaker',])

work.df <- data.frame(group = c("working", "temporarily laid off", "unemployed", "retired", "permanently disabled","homemaker"), value = c(nw1, nw2, nw4, nw5, nw6, nw7))

work.bp<- ggplot(work.df, aes(x="", y=value, fill=group))+
geom_bar(width = 1, stat = "identity")

pie3 <- work.bp + coord_polar("y", start=0)+ scale_fill_brewer(palette="Accent")
pie3
