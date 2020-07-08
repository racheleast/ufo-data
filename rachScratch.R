#ggmap() + geom_point(data = data, aes(x= longitudes, y=latitudes))

#ggplot(newrows, aes(x = longitudes, y = latitudes))+
#coord_map()

#(mapufo <- ggplot(newrows, aes(x = longitudes, y= latitudes)) +
#    geom_point() )

#data <- data[complete.cases(data$city_longitude)]
#locations <- st_as_sf(data, coords = c(longitudes, latitudes), crs = 4326)

#mapview(locations)

#ggmap(bw_map) + geom_point(data = data, aes(x= longitudes, y=latitudes))




# This piece of code just plots our long/lat with no map behind it

plot(longitudes,latitudes, ylim = c(10,70), xlim = c(-170,-50), cex= .05, col="blue", main = "UFO Sightings")