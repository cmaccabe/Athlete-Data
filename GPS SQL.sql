select
  *
from
  Aug_GPS
where
  NewDate = '2024-08-06'
  and Session_Title = 'Practice PM';
-- Found Training sessions that were afternoon only on 8/6/24
select
  DISTINCT first_l,
  sum(accelerations) AS 'total_accels'
from
  Aug_GPS
group by
  first_l
order by
  total_accels desc;
-- I wanted to count the total number of accelerations for each individual
select
  DISTINCT First_L,
  sum(Accelerations) as 'total_accels',
  sum(Decelerations) as 'total_decels'
from
  Aug_GPS
group by
  First_L
order by
  total_accels desc;
-- I listed the total accels and decels by player and found that the output can only order by one or the other, 
-- otherwise it contradicts the order of the other column
select
  distinct first_l,
  avg(`Distance(metres)`) as avg_distance
from
  Aug_GPS
where
  NewDate = '2024-08-06'
GROUP by
  First_L
order by
  avg_distance desc;
-- I found the average distance in meters each athlete traveled on 8-6-24
-- and ordered the averages from highest to lowest
select
  First_L,
  max(`distance(metres)`) as max_distance
from
  Aug_GPS
where
  NewDate = '2024-08-06'
group by
  First_L
order by
  max_distance asc;
-- I pulled the max distance for each athlete on 8-6-24 and ordered them from smallest to largest