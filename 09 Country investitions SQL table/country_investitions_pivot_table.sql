WITH
     inv_2011 AS 
     (
         SELECT country_code as cc, AVG(funding_total) as a1
         FROM company
         WHERE EXTRACT(YEAR FROM founded_at)='2011'
         GROUP BY country_code
     ),
     inv_2012 AS 
     (
         SELECT country_code as cc, AVG(funding_total) as a2
         FROM company
         WHERE EXTRACT(YEAR FROM founded_at)='2012'
         GROUP BY country_code
     ),
     inv_2013 AS 
     (
         SELECT country_code as cc, AVG(funding_total) as a3
         FROM company
         WHERE EXTRACT(YEAR FROM founded_at)='2013'
         GROUP BY country_code
     )

SELECT inv_2011.cc,
       inv_2011.a1,
       inv_2012.a2,
       inv_2013.a3
FROM inv_2011
INNER JOIN inv_2012 ON inv_2011.cc=inv_2012.cc
INNER JOIN inv_2013 ON inv_2013.cc=inv_2012.cc
ORDER BY inv_2011.a1 DESC