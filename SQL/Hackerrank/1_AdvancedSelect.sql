#21 Type of Triangle
SELECT 
Case
    WHEN A+B>C AND A+C>B AND B+C>A THEN
        CASE
            WHEN A = B AND B = C THEN 'Equilateral' 
            WHEN A = B OR A = C OR B = C THEN 'Isosceles'
            ELSE 'Scalene'
        END
    ELSE 'Not A Triangle'
END
FROM Triangles
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#22 The PADS
SELECT CONCAT(Name,'(',LEFT(Occupation,1),')')
FROM OCCUPATIONS
ORDER BY 1;
SELECT CONCAT('There are a total of ',COUNT(*),' ',lower(Occupation),'s.')
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY 1
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#23 Binary Tree Nodes
SELECT 
CASE
    WHEN P is NULL THEN CONCAT(N,' Root')
    WHEN N in (SELECT DISTINCT P FROM BST) THEN CONCAT(N,' Inner')
    ELSE CONCAT(N,' Leaf')
END
FROM BST
ORDER BY N
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#24 Occupations
set @r1=0, @r2=0, @r3=0, @r4=0;
select min(Doctor), min(Professor), min(Singer), min(Actor)
from(
  select case when Occupation='Doctor' then (@r1:=@r1+1)
            when Occupation='Professor' then (@r2:=@r2+1)
            when Occupation='Singer' then (@r3:=@r3+1)
            when Occupation='Actor' then (@r4:=@r4+1) end as RowNumber,
    case when Occupation='Doctor' then Name end as Doctor,
    case when Occupation='Professor' then Name end as Professor,
    case when Occupation='Singer' then Name end as Singer,
    case when Occupation='Actor' then Name end as Actor
  from OCCUPATIONS
  order by Name
) Temp
group by RowNumber
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#25 New Companies
SELECT c.company_code, c.founder, 
    COUNT(DISTINCT l.lead_manager_code), COUNT(DISTINCT s.senior_manager_code), 
    COUNT(DISTINCT m.manager_code),COUNT(DISTINCT e.employee_code) 
FROM Company AS c, Lead_Manager AS l, Senior_Manager AS s, Manager AS m, Employee AS e 
WHERE c.company_code = l.company_code 
    AND l.company_code=s.company_code
    AND s.company_code=m.company_code
    AND m.company_code=e.company_code 
GROUP BY c.company_code, c.founder
ORDER BY c.company_code;







