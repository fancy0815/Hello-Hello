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
