
### ---------------------------------------------- ###
###         Vizualizing lemmata of                 ###  
###    Schopenhauer's marks in Oráculo manual      ###
###                                                ###
###      www.schopenhauer.uni.wroc.pl              ###
### ---------------------------------------------- ###

#### Load data ####

adj = read.csv("adj.csv") 
nouns = read.csv("nouns.csv") 
verbs = read.csv("verbs.csv")

#### Plot it ####

library(ggplot2)

ggplot() + 
  
    geom_text(data = subset(adj, freq > 1), aes(freq, x, label=x,size=freq*3,  color="#325438")) +
    geom_text(data = subset(nouns, freq > 1), aes(freq, x, label=x,size=freq*3, color = "#1874cd")) + 
    geom_text(data = subset(verbs, freq > 1), aes(freq, x, label=x,size=freq*3, color = "#cd2626")) + 
  
    scale_colour_identity() +

    labs(
    x = "Frec. > 1 · Palabras eliminadas: 'ser', 'estar', 'haber', 'tener', 'cosa'",
    # y = "",
    subtitle = "Frecuencia de nombres, verbos y adjetivos (lemas) marcados en el «Oráculo Manual»",
    title = "Schopenhauer's Marginalia",
    caption="Codificación XML/TEI en www.schopenhauer.uni.wroc.pl"
  )  +
  
  theme(
      axis.title.y=element_blank(),
      axis.text.x=element_text(size=9, face="italic"),
      axis.text.y=element_blank(),
      axis.ticks.x=element_blank(),
      axis.ticks.y=element_blank(),
      panel.grid.major =element_blank(),
      panel.grid.minor =element_line(color="gray"),
      plot.title = element_text(color="black", size=rel(1.4), face="italic"), 
      plot.subtitle=element_text(size=12,colour="grey30"),
      plot.caption=element_text(hjust=1,size=7,colour="grey30"),
      panel.background = element_rect(fill = 'white', colour = "black", size=1),
      legend.position="none"
     )   

