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