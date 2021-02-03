# ADS Project 1:  R Notebook on the Presidential Elections in the US

### Output folder

(The output directory contains analysis output, processed datasets, logs, or other processed things)


anes_new.csv: filtered data with columns: year, turnout, vote, race, gender, language, interview, urbanism, region, work, grewup, job, outofwork such that all NA values are omitted.

Grouped data from anes_use into three groups that hold relevant characteristics:

anes_new1.csv: selected data of (year, vote, race, language, interview, gender, turnout) omitting all NA values


anes_new2.csv: selected data of (year, vote, region, urbanism, grewup, turnout) omitting all NA values

anes_new3.csv: selected data of (year, vote, work, job, outofwork, turnout) omitting all NA values


where 

"year": year of the record

"turnout": turnout (voted, registered but did not vote, not registered and did not vote)

"vote": which party they voted for

"race": their race

"gender": their gender

"language": language the interview was conducted in

"interview": mode of interview (telephone, internet, etc.)

"urbanism": the urbanism of where they are located (central, suburban, rural)

"region": census region (northeast, north central, south, west 

"work": work status (working, temp laid off, unemployed, retired, disabled, homemaker, student)

"grewup" : type of community where grew up (farm, country not farm, small city, medium city, large city, suburb of large city, very large city, suburb of very large city)

"job": worried about losing/finding job in the future  ( A lot, somewhat, not much at all)

"outofwork": laid off / out of work in past 6 months? (Yes, no)
