
/* QUERY 1
This query shows the driver ID, collision ID, date and time of crash, and license registration for all those not from New York State

*/
USE motor_vehicle_collisions;
CREATE OR REPLACE VIEW reasons_for_crashing AS
SELECT
    c.Collision_ID,
    c.Contributing_Factor_1,
    c.Contributing_Factor_2,
    CONCAT('Date: ', ct.Crash_Date, ' ', 'Time: ', ct.Crash_Time) AS Moment_Of_Crash,
    pct.Vehicle_Occupants,
    CONCAT(pct.Pre_Crash, ' ', pct.Travel_Direction) AS Heading
FROM
    contributing_factor c
JOIN
    crash ct ON c.Collision_ID = ct.Collision_ID
JOIN
    preexisting_conditions pct ON pct.Collision_ID = ct.Collision_ID 
WHERE
    c.Contributing_Factor_1 != 'Unspecified'
    AND
    c.Contributing_Factor_1 != '1'
GROUP BY
    c.Collision_ID,
    c.Contributing_Factor_1,
    c.Contributing_Factor_2,  
    ct.Crash_Date,
    ct.Crash_Time,
    pct.Vehicle_Occupants,
    pct.Pre_Crash,
    pct.Travel_Direction
ORDER BY
    c.Collision_ID;

SELECT * FROM  out_of_state_crashers




/*           
QUERY 2
This query shows collision id, contributing factors, date and time of crash, number of occupants, direction and what the car was doing before the crash for all crashes have at least one reason. 
  */
USE motor_vehicle_collisions;
CREATE OR REPLACE VIEW reasons_for_crashing AS
SELECT
    c.Collision_ID,
    c.Contributing_Factor_1,
    c.Contributing_Factor_2,
    CONCAT('Date: ', ct.Crash_Date, ' ', 'Time: ', ct.Crash_Time) AS Moment_Of_Crash,
    pct.Vehicle_Occupants,
    CONCAT(pct.Pre_Crash, ' ', pct.Travel_Direction) AS Heading
FROM
    contributing_factors_table c
JOIN
	crash_table ct ON c.Collision_ID = ct.Collision_ID
JOIN
	prexisting_conditions_table pct ON pct.Collision_ID = ct.Collision_ID 
WHERE
    c.Contributing_Factor_1 != "Unspecified"
    AND
    c.Contributing_Factor_1 != "1"
GROUP BY
     c.Collision_ID,
     c.Contributing_Factor_1,
     pct.Vehicle_Occupants,
     pct.Pre_Crash,
      pct.Travel_Direction
ORDER BY
	 c.Collision_ID;

SELECT * FROM  reasons_for_crashing;


/* QUERY 3
This query shows Vehicle Damage ID, Point of Impact, Vehicle Type, Vehicle Year, and Vehicle Make. It joins the vehicle table and vehicle damage table to show all Ford 4 dr sedans under the year 2020. 
  */
USE motor_vehicle_collisions;
CREATE OR REPLACE VIEW ford_sedans AS
SELECT
    vd.Vehicle_Damage_ID,
    vd.Point_Of_Impact,
    vt.Vehicle_Type,
    vt.Vehicle_Year,
    vt.Vehicle_Make
FROM
    vehicle_damage vd
JOIN
    vehicle_table vt ON vd.Vehicle_ID = vt.Vehicle_ID
WHERE
    vt.Vehicle_Type = '4 dr sedan' AND vt.Vehicle_Year < 2020

#Subquery
AND vt.Vehicle_ID IN (
    SELECT
        Vehicle_ID  
    FROM
        vehicle_table
    WHERE
        Vehicle_Make = 'FORD'  
);





/*
QUERY 4 
This query shows the number of occurrences of pre-existing conditions of all the crashes in our database. 
*/
USE motor_vehicle_collisions;
CREATE OR REPLACE VIEW precondition_counts AS
SELECT
    pc.Pre_Crash AS Precondition,
    COUNT(pc.Pre_Crash) AS Occurrence_Count
FROM
    preexisting_conditions pc
GROUP BY
    pc.Pre_Crash
ORDER BY
    Occurrence_Count DESC;


SELECT * FROM preexisting_conditions;


/*
Query 5
This query provides information about vehicles manufactured before 2010. 
  */
USE motor_vehicle_collisions;
CREATE OR REPLACE VIEW Vehicle_Crash_Linked_Info AS
SELECT
    vtc.Collision_ID,
    v.Vehicle_ID,
    v.Vehicle_Type,
    v.Vehicle_Make,
    v.Vehicle_Year,
    c.Crash_Date,
    c.Crash_Time
FROM
    vehicle_table_crash_table vtc
JOIN
    vehicle v ON vtc.Vehicle_ID = v.Vehicle_ID
JOIN
    crash c ON vtc.Collision_ID = c.Collision_ID
WHERE
    v.Vehicle_Year < 2010;

SELECT * FROM Vehicle_Crash_Linked_Info;
