/* userRating per ShowsList */

SELECT  list, round(AVG(user_rating), 2) AS avg_user_rating
FROM `training-projects-421111.Netflix.Netflix_data_table` 
Where list IS NOT NULL
group by list
order by avg_user_rating desc;



/* userRating per Country */

SELECT  country, round(AVG(user_rating), 2) AS avg_user_rating
FROM `training-projects-421111.Netflix.Netflix_data_table` 
where country IS NOT NULL
group by country
order by avg_user_rating desc