/* Number of shows per director */
SELECT
  director,
  COUNT(*) AS num_of_works
FROM
  `training-projects-421111.Netflix.Netflix_data_table`
WHERE
  director IS NOT NULL
GROUP BY
  director
ORDER BY
  num_of_works DESC;

/*Number of shows per year*/

SELECT year_added, count(*) AS num_of_works_added
FROM `training-projects-421111.Netflix.Netflix_data_table` 
GROUP BY year_added
order by num_of_works_added DESC;


/*Number of shows per ShowsRating*/


SELECT rating, count(*) AS num_of_shows
FROM `training-projects-421111.Netflix.Netflix_data_table` 
where rating IS NOT NULL
group by rating
order by num_of_shows desc;


/*Percentage of shows per country*/


SELECT country, COUNT(*) AS num_of_shows, Round(count(*) / 
        (select count(*)
          FROM `training-projects-421111.Netflix.Netflix_data_table` 
        ), 2) AS percentage_of_shows
FROM `training-projects-421111.Netflix.Netflix_data_table` 
where country is not null
group by country
order by num_of_shows desc;

/* Number of shows per list */

select  list, count(*) AS num_of_shows

from `training-projects-421111.Netflix.Netflix_data_table`

group by list
order by num_of_shows desc
