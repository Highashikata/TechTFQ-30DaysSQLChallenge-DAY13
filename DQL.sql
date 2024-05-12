/* Fetching the Data */
SELECT *
FROM EMPLOYEE_MANAGERS;

------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------ 
------------------------------- Solution 1 : Using Self join ----------------------------- 
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------

SELECT 
	e1.NAME MANAGER, 
	COUNT(e2.manager) NO_OF_EMPLOYEES
FROM EMPLOYEE_MANAGERS e1
JOIN EMPLOYEE_MANAGERS e2
ON e1.id = e2.manager
GROUP BY e1.NAME
ORDER BY COUNT(e2.manager) DESC;



------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------ 
------------------------------- Solution 2 : Using Sub query ----------------------------- 
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------


SELECT
    Manager_Name,
    Number_of_Employees
FROM
    (
        SELECT
            m.name AS Manager_Name,
            (SELECT COUNT(*)
             FROM employee_managers e
             WHERE m.id = e.manager) AS Number_of_Employees
        FROM
            employee_managers m
    ) AS SubqueryAlias
WHERE
    Number_of_Employees > 0
ORDER BY
    Manager_Name;



------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------ 
------------------------------- Solution 3 : Using CTE ----------------------------------- 
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------

WITH CTE AS(
	SELECT
            m.name AS Manager_Name,
            (SELECT COUNT(*)
             FROM employee_managers e
             WHERE m.id = e.manager) AS Number_of_Employees
        FROM
            employee_managers m
)

SELECT * from CTE
WHERE
    Number_of_Employees > 0
ORDER BY
    Manager_Name;






