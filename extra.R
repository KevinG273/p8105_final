### Geocoding the Locations
latitude and longitude are not present in your dataset, I will need to geocode the locations to obtain geographic coordinates based on the city and state columns.

```{r}
library(ggmap)
register_google(key = "AIzaSyBQakpQsjciRvl1lHY2cUnznipQVZ_F6kE")
```
```{r}
gun_df <- gun_df |> 
  mutate(location = paste(city, state, sep = ", "))

geocoded <- geocode(gun_df$location, output = "latlon", source = "google")

gun_df <- cbind(gun_df, geocoded)
```

# Load necessary libraries
```{r}
library(leaflet)
library(dplyr)
```

## incidents with highet number of victims

```{r}
top_incidents <- gun_df |> select(date, city, state, dead, injured, total, description) |> 
  arrange(desc(total)) |> slice(1:13)

top_incidents
```

The above shows the 10 most severe gun-related incidents in the dataset, ranked by the total number of victims (dead and injured). The incidents range from mass shootings at public events to tragic attacks in schools and other locations. Each entry provides details on the location, date, fatalities, injuries, and a brief description of the event, offering insights into the magnitude and context of these tragedies.

## Interactive Map of the Incidents with highest numbers of victims

```{r}

```


