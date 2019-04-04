#595 Big Countries
https://leetcode.com/problems/big-countries/

SELECT Name, Population, Area
FROM World
WHERE
    Area > 3000000
    OR Population > 25000000;
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
627. Swap Salary
https://leetcode.com/problems/swap-salary/

UPDATE Salary
SET Sex = 
CASE Sex
    WHEN 'm' then 'f'
    WHEN 'f' then 'm'
END
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
627
