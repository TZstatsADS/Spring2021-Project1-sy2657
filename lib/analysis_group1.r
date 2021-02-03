# create faceted plots for group 1 

# plot 1
ggplot(anes_new1, aes(fill=race, y=vote, x=interview)) + 
    geom_bar(position="dodge", stat="identity") +
    ggtitle("Voted for based on mode of interview and race faceted by gender") +
    facet_wrap(~anes_new1$gender) +
    theme(legend.position="right") +
    xlab("")+theme(axis.text.x = element_text(angle=40))+scale_fill_brewer(palette = "PuOr")
    
# plot 2
ggplot(anes_new1, aes(fill=race, y=interview, x=language)) + 
    geom_bar(position="dodge", stat="identity") +
    ggtitle("Interview type based on language and race faceted by voted for") +
    facet_wrap(~anes_new1$vote) +
    theme(legend.position="right") +
    xlab("")+theme(axis.text.x = element_text(angle=40))+scale_fill_brewer(palette = "PuOr")
