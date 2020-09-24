#1-4
SELECT winner 
FROM nobel
WHERE yr>=2000 AND subject= 'Peace'


#1-7
SELECT winner 
FROM nobel 
WHERE winner LIKE 'John%'


-------------------------------------------------
#2-2
SELECT name 
FROM world 
WHERE continent='Europe'AND gdp/population>(SELECT gdp/population FROM world WHERE name= 'united kingdom')

#2-4
SELECT name, population 
FROM world 
WHERE population <(SELECT population FROM world WHERE name='Poland') AND population >(SELECT population FROM world WHERE name='Canada')

#3-6
SELECT name 
FROM world 
WHERE gdp>(SELECT max(gdp) FROM world WHERE continent= 'Europe') and gdp is NOT NULL

-------------------------------------------------
#3-2
SELECT DISTINCT continent 
FROM world

#3-4
SELECT count(name) 
FROM world 
WHERE area>='1000000'

#3-6
SELECT continent, COUNT(name)
FROM world
GROUP BY continent

------------------------------------------------
#4-3
SELECT id, title, yr
FROM movie
WHERE title LIKE 'star% trek%'ORDER BY yr DESC

#4-6
SELECT DISTINCT name
FROM actor JOIN casting on actor.id=casting.actorid
WHERE casting.movieid=11768

#4-7
SELECT DISTINCT name
FROM actor JOIN casting ON (actor.id = actorid)JOIN movie ON (movie.id = movieid) 
WHERE title = 'Alien'

#4-9
SELECT title 
FROM movie, casting, actor
WHERE movie.id=casting.movieid AND actor.id=casting.actorid AND casting.ord != 1 AND actor.name='Harrison Ford'