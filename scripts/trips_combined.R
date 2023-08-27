## Calling up the required packages
library(tidyverse)

df202208 <- 
  read_csv("r_course/Data/Cyclistic/unzipped/202208-divvy-tripdata.csv")
df202209 <- 
  read_csv("r_course/Data/Cyclistic/unzipped/202209-divvy-publictripdata.csv")
df202210 <-
  read_csv("r_course/Data/Cyclistic/unzipped/202210-divvy-tripdata.csv")
df202211 <-
  read_csv("r_course/Data/Cyclistic/unzipped/202211-divvy-tripdata.csv")
df202212 <-
  read_csv("r_course/Data/Cyclistic/unzipped/202212-divvy-tripdata.csv")
df202301 <-
  read_csv("r_course/Data/Cyclistic/unzipped/202301-divvy-tripdata.csv")
df202302 <-
  read_csv("r_course/Data/Cyclistic/unzipped/202302-divvy-tripdata.csv")
df202303 <-
  read_csv("r_course/Data/Cyclistic/unzipped/202303-divvy-tripdata.csv")
df202304 <-
  read_csv("r_course/Data/Cyclistic/unzipped/202304-divvy-tripdata.csv")
df202305 <-
  read_csv("r_course/Data/Cyclistic/unzipped/202305-divvy-tripdata.csv")
df202306 <-
  read_csv("r_course/Data/Cyclistic/unzipped/202306-divvy-tripdata.csv")
df202307 <-
  read_csv("r_course/Data/Cyclistic/unzipped/202307-divvy-tripdata.csv")

## Getting acquainted with the data.



## Combining the datasets into one manageable data frame
trips_df <- 
  list(x202208,
       x202209,
       x202210,
       x202211,
       x202212,
       x202301,
       x202302,
       x202303,
       x202304,
       x202305,
       x202306,
       x202307)

trips_combined <- trips_df %>% reduce(left_join, by = 'ride_id')