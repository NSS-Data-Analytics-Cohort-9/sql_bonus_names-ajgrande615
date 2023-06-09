-- 1. How many rows are in the names table? 1,957,046
-- SELECT COUNT (*)
-- FROM names;

-- 2. How many total registered people appear in the dataset? 351,653,025
-- SELECT SUM (num_registered)
-- FROM names;

-- 3. Which name had the most appearances in a single year in the dataset? Linda
-- SELECT name, year, MAX (num_registered)
-- FROM names
-- GROUP BY name, year
-- ORDER BY max DESC;

-- 4. What range of years are included? 1880-2018
-- SELECT MAX(year), MIN(year)
-- FROM names

-- 5. What year has the largest number of registrations? 1957
-- SELECT year, SUM(num_registered) AS num_reg
-- FROM names
-- GROUP BY year
-- ORDER BY num_reg DESC;

-- 6. How many different (distinct) names are contained in the dataset? 98,400
-- SELECT DISTINCT name
-- FROM names

-- 7. Are there more males or more females registered? Males
-- SELECT SUM (num_registered) AS gen_reg, gender
-- FROM names
-- GROUP BY gender
-- ORDER BY gen_reg;

-- 8. What are the most popular male and female names overall (i.e., the most total registrations)? James, Mary
-- SELECT name, gender,SUM(num_registered) AS num_reg
-- FROM names
-- GROUP BY name, gender
-- ORDER BY num_reg DESC;

-- 9. What are the most popular boy and girl names of the first decade of the 2000s (2000 - 2009)? Jacob, Emily
-- SELECT name, gender,SUM(num_registered) AS num_reg
-- FROM names
-- WHERE year BETWEEN 2000 AND 2009
-- GROUP BY name, gender
-- ORDER BY num_reg DESC;

-- 10. Which year had the most variety in names (i.e. had the most distinct names)? 2008
-- SELECT year, COUNT(DISTINCT name) AS name_count
-- FROM names
-- GROUP BY year
-- ORDER BY name_count DESC;

-- 11. What is the most popular name for a girl that starts with the letter X? Ximena
-- SELECT name, SUM(num_registered) AS num_reg
-- FROM names
-- WHERE UPPER(name) LIKE 'X%'
-- 	AND UPPER(gender) = 'F'
-- GROUP BY name
-- ORDER BY num_reg DESC;

-- 12. How many distinct names appear that start with a 'Q', but whose second letter is not 'u'? 46
-- SELECT COUNT(DISTINCT name)
-- FROM names
-- WHERE UPPER(name) LIKE 'Q%'
-- 	AND UPPER(name) NOT LIKE '_U%';

-- 13. Which is the more popular spelling between "Stephen" and "Steven"? Use a single query to answer this question. Steven
-- SELECT name, SUM(num_registered) AS num_reg
-- FROM names
-- WHERE LOWER(name) = 'stephen'
-- 	OR LOWER(name) = 'steven'
-- GROUP BY name
-- ORDER BY num_reg DESC;

-- 14. What percentage of names are "unisex" - that is what percentage of names have been used both for boys and for girls?

-- 15. How many names have made an appearance in every single year since 1880?

-- 16. How many names have only appeared in one year?

-- 17. How many names only appeared in the 1950s?

-- 18. How many names made their first appearance in the 2010s?

-- 19. Find the names that have not be used in the longest.

-- 20. Come up with a question that you would like to answer using this dataset. Then write a query to answer this question.