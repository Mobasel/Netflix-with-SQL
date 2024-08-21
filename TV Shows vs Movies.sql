  /* Counting the number of the Movies only */
SELECT
  COUNT(*) AS Total_Movies
FROM
  `training-projects-421111.Netflix.Netflix_data_table`
WHERE
  type = "Movie"; 
  
/* Counting the number of the Shows only */
SELECT
  COUNT(*) AS Total_Shows
FROM
  `training-projects-421111.Netflix.Netflix_data_table`
WHERE
  type = "TV Show";