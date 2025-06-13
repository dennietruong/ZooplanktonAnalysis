
#Import package
library("tidyverse")




#Set Directory
getwd()
setwd("C:/Users/denni/Documents/RStudioBigelow/FieldProject")



#Import Data
cruisedata <- read.csv("Zooplankton Analysis 2022_Colby.csv", header=TRUE) #header TRUE mean first line of csv has heading
View(cruisedata)




#Filter data
cruisedata <- dplyr::filter(DATA,Date==20120911)
#View(cruisedata)

stnData <- dplyr::filter(cruisedata,Station==1)
#View(stnData)



#Combine filter
subData <- dplyr::filter(DATA,Date==20120911 & Station==1)
#View(subData)



ggplot(cruisedata,aes(x=Cruise,y=TotalBiomass_mg,group= Station, color=factor(Station)))+
  geom_path(linetype = "dashed")+
  geom_point() + xlab('Cruise Number')+ylab('Total Biomass (in mg)')+
  guides(color = guide_legend(title = 'Station'))+
  labs(title = "2022 Zooplankton Biomass Timeseries of all Stations")
#aesthetic = call the variable
