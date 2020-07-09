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