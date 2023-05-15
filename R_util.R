###########################
# common ggplot2 themes ###
##########################

common_ggplot2 <- theme_classic() + theme(axis.text.x=element_text(size=7,angle=0,colour="black"),
                                          axis.text.y=element_text(size=7,colour="black"),
                                          axis.title.y=element_text(size=7,colour="black"),
                                          # axis.ticks.y = element_blank(),
                                          axis.title.x=element_text(size=7,colour="black"),
                                          legend.title = element_blank(),#text(size=16),
                                          legend.text = element_text(size=7,colour="black"),
                                          legend.position = "right",
                                          legend.key = element_blank(),
                                          axis.ticks= element_line(size=0.2), #0.5 is defect size
                                          plot.title=element_text(size=7,colour="black")) 


###########################
# colour palettes ########
##########################


source("./cs_colour_palette.R")