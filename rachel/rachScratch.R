#ggmap() + geom_point(data = data, aes(x= longitudes, y=latitudes))

#ggplot(newrows, aes(x = longitudes, y = latitudes))+
#coord_map()

#(mapufo <- ggplot(newrows, aes(x = longitudes, y= latitudes)) +
#    geom_point() )

#data <- data[complete.cases(data$city_longitude)]
#locations <- st_as_sf(data, coords = c(longitudes, latitudes), crs = 4326)

#mapview(locations)

#ggmap(bw_map) + geom_point(data = data, aes(x= longitudes, y=latitudes))

#split_df2 <- split(newdata2$data.sighting_year, newdata2$data.sighting_year > 2005)

#split_df2[1]

#earlydata <- data.frame(split_df2[1], newdata2$data.city_longitude, newdata2$data.city_latitude )

#earlydata <- with(newdata2, split(newdata2$data.sighting_year > 2005, newdata2$data.city_longitude, newdata2$data.city_latitude))

#split_df <- split(year, year > 2005)

#split_df

#year$firstyears <- year<2005

#firstyears

# This piece of code just plots our long/lat with no map behind it

plot(longitudes,latitudes, ylim = c(10,70), xlim = c(-170,-50), cex= .05, col="blue", main = "UFO Sightings")


# Interactive map with ggplotly 

fig <- (mapufo <- ggplot() +
          geom_polygon(data = world, aes(x = long, y = lat, group = group), fill = NA, colour = "black") + # Plot Map
          geom_point(data = earlydata, aes(x = earlydata$data.city_longitude , y = earlydata$data.city_latitude) , colour = "red", cex = 3 ) + # Plot Data
          geom_point(data = NuclearData3, aes(x = NuclearData3$NuclearData.Longitude , y = NuclearData3$NuclearData.Latitude) , colour = "blue", cex = 5 )+
          theme_classic() + # Remove Grey Background
          ylim(34, 36) +
          xlim(-94,-92) +
          xlab("Longitude") +
          ylab("Latitude") +
          ggtitle("UFO Sightings Before 2005 With U.S. Nuclear Power Plants"))

fig2 <- ggplotly(fig)

fig2

### NEW STUFF

NucPerState <- read_excel(here("NucPerState.xlsx"))

nuclearStates <- NuclearData %>% group_by(State) %>% summarise(count = n()) 

statedata <- data.frame(data$sighting_year , data$state)
statedata2 <- na.omit(statedata) # Get rid of empty rows

numstates <- statedata2 %>% group_by(data.state) %>% summarise(count = n()) 
#nuclearStates <- NuclearData$State

earlydata2 <- subset(statedata2, statedata2$data.sighting_year <= 2005) # UFO sightings before 2005

earlydata22 <- earlydata2 %>% group_by(data.state) %>% summarise(count = n()) 

#ggplot(nuclearStates, aes(x = reorder(State, -count), y = count)) + geom_col() +
theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = .35))


#ggplot(earlydata22, aes(x = reorder(data.state, -count), y = count)) + geom_col() +
theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = .35))

#plot(nuclearStates$count, numstates$count)

#ggplot(numstates, aes(y = count, x= data.state ))+
geom_bar(position = "dodge", stat = "identity")

#dataaa <- data.frame(numstates, nuclearStates)

#numstates <- numstates[order(numstates$data.state)]
#numstates2 <- numstates[-c("AB", "BC")]
#numstates
#nuclearStates

tableee <- cbind(numstates$count, NucPerState$Count)
plot(NucPerState$Count, numstates$count, xlab = "Number of Power Plants in the State", ylab= "Number of Sightings", col = "red", type= "p")


tableee
barplot(tableee)
cor(numstates$count, NucPerState$Count)
cor.test(numstates$count, NucPerState$Count)

library(ggpubr)

ggscatter(tableee, x= "Count", y = "count")


NucPerState <- read_excel(here("NucPerState.xlsx"))

tableee <- data.frame(earlydata22, NucPerState$Count)

Count0 <- tableee[NucPerState$Count == 0, ]
mean(Count0$count)

Count1 <- tableee[NucPerState$Count == 1, ]
mean(Count1$count)

Count2 <- tableee[NucPerState$Count == 2, ]
mean(Count2$count)

Count3 <- tableee[NucPerState$Count == 3, ]
mean(Count3$count)

Count4 <- tableee[NucPerState$Count == 4, ]
mean(Count4$count)

Count5 <- tableee[NucPerState$Count == 5, ]
mean(Count5$count)

#Count6 <- tableee[NucPerState$Count == 6, ]
#mean(Count6$count)

Count7 <- tableee[NucPerState$Count == 7, ]
mean(Count7$count)

#Count8 <- tableee[NucPerState$Count == 8, ]
#mean(Count8$count)

Count9 <- tableee[NucPerState$Count == 9, ]
mean(Count9$count)

Count14 <- tableee[NucPerState$Count == 14, ]
mean(Count14$count)


nuclearStates

perstate

# Plot and cor coeff

plot(NucPerState$Count, earlydata22$count, pch=20, col = "red", xlab = "Number of Power Plants in the State", ylab= "Number of Sightings Before 2005")
cor(NucPerState$Count, earlydata22$count)
