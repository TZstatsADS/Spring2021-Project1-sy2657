# group 2 : regions and locations

# plot 1
ggplot(anes_new2, aes(fill=region, y=vote, x=urbanism)) + 
    geom_bar(position="dodge", stat="identity") +
    ggtitle("Voted for based on urbanism and region faceted by where they grew up") +
    facet_wrap(~anes_new2$grewup) +
    theme(legend.position="right") +
    xlab("")+theme(axis.text.x = element_text(angle=40))+scale_fill_brewer(palette = "Spectral")
    
 # plot 2
 ggplot(anes_new2, aes(fill=region, y=urbanism, x=grewup)) +
    geom_bar(position="dodge", stat="identity") +
    ggtitle("Grew up based on urbanism and region faceted by voted for") +
    facet_wrap(~anes_new2$vote) +
    theme(legend.position="right") +
    xlab("")+theme(axis.text.x = element_text(angle=40))+scale_fill_brewer(palette = "Spectral")
