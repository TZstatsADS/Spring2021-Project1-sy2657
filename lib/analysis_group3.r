# work status group

ggplot(anes_new3, aes(fill=work, y=vote, x=job)) + 
    geom_bar(position="dodge", stat="identity") +
    ggtitle("Voted for (=y) based on job (=x) and work (=fill) faceted by out of work or not") +
    facet_wrap(~anes_new3$outofwork) +
    theme(legend.position="right") +
    xlab("")+theme(axis.text.x = element_text(angle=40))+scale_fill_brewer(palette = "Paired")
    
ggplot(anes_new3, aes(fill=work, y=outofwork, x=job)) + 
    geom_bar(position="dodge", stat="identity") +
    ggtitle("Out of work (=y) based on job (=x) and work (=fill) faceted by voted for") +
    facet_wrap(~anes_new3$vote) +
    theme(legend.position="right") +
    xlab("")+theme(axis.text.x = element_text(angle=40))+scale_fill_brewer(palette = "Paired")
