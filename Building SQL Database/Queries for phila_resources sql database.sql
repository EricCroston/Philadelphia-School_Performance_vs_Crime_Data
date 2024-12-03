------Verify the Tables---------------------------------
SELECT * FROM "Elementary_School_Metric_Scores"
SELECT * FROM "KtoEight_School_Metric_Scores"
SELECT * FROM "Middle_School_Metric_Scores"
SELECT * FROM "High_School_Metric_Scores"
SELECT * FROM "School_Info"
SELECT * FROM "Police_Location"
SELECT * FROM "Police_Districts"
SELECT * FROM "Incidents"
SELECT * FROM "Incidents_Time_Place"


------Police Data Analysis---------------------------------

---1. List the district_psa, , ucr_code, general_crime_category and crime_group for each incident
SELECT i."district_psa", i."ucr_code", i."general_crime_category", i."crime_group"
FROM "Incidents_Time_Place" i;

--2. List the frequency counts, in descending order, of General_Crime_Category (that is, how many of each crime).
SELECT "general_crime_category", COUNT("general_crime_category") AS "frequency"
FROM "Incidents_Time_Place"
GROUP BY "general_crime_category"
ORDER BY COUNT("general_crime_category") DESC;

--3. List the frequency counts, in descending order, of General_Crime_Category and Date (that is, how many of each crime).
SELECT 
    "dispatch_date", 
    "general_crime_category", 
    COUNT("general_crime_category") AS "frequency"
FROM 
    "Incidents_Time_Place"
GROUP BY 
    "dispatch_date", 
    "general_crime_category"
ORDER BY 
    "dispatch_date", 
    COUNT("general_crime_category") DESC;

--4.  List the frequency counts, in descending order, of Crime_Group and Date (that is, how many of each crime group).
SELECT 
    "dispatch_date", 
    "crime_group", 
    COUNT("crime_group") AS "frequency"
FROM 
    "Incidents_Time_Place"
GROUP BY 
    "dispatch_date", 
    "crime_group"
ORDER BY 
    "dispatch_date", 
    COUNT("crime_group") DESC;


--5. List the frequency of each type of crime within each District_PSA, group by both District_PSA and General_Crime_Category. 
SELECT 
    "district_psa", 
    "general_crime_category", 
    COUNT(*) AS "frequency"
FROM 
    "Incidents_Time_Place"
GROUP BY 
    "district_psa", 
    "general_crime_category"
ORDER BY 
    "district_psa", 
    COUNT(*) DESC;

--6. List the totals for each type of crime within each District_PSA,
SELECT 
    "district_psa", 
    COUNT(*) AS "total_crimes"
FROM 
    "Incidents_Time_Place"
GROUP BY 
    "district_psa"
ORDER BY 
    "district_psa", 
    COUNT(*) DESC;

--7. List the totals each type of crime within each District_PSA,
SELECT 
    "district_psa", 
    COUNT(*) AS "total_Crimes"
FROM 
    "Incidents_Time_Place"
GROUP BY 
    "district_psa"
ORDER BY 
    "district_psa", 
    COUNT(*) DESC;

---8. List the District_PSA, Crime Group and Frequncy.
SELECT 
    "dispatch_date", 
    "crime_group", 
    COUNT(*) AS "frequency"
FROM 
    "Incidents_Time_Place"
GROUP BY 
    "dispatch_date", 
    "crime_group"
ORDER BY 
    "dispatch_date", 
    COUNT(*) DESC;


-----------High School Metrics Analysis------------ 

---9. List Highschool Metrics with PSA and Crime Data
SELECT 
    si."school_id", 
    si."school_name", 
    si."district_psa", 
    hs."percent_students_attending_at_least_90_percent", 
    hs."percent_11th_grade_students_proficient_all_three_keystones"
FROM 
    "School_Info" si
JOIN
    "High_School_Metric_Scores" hs
ON
    si."school_id" = hs."school_id"
ORDER BY 
    si."district_psa";

--10. Calculate the Average School Metrics for High Schools within the same PSA
SELECT 
    si."district_psa", 
    AVG(hs."percent_students_attending_at_least_90_percent") AS "average_percent_attending_90", 
    AVG(hs."percent_11th_grade_students_proficient_all_three_keystones") AS "average_percent_proficient_all_keystones"
FROM 
    "School_Info" si
JOIN
    "High_School_Metric_Scores" hs
ON
    si."school_id" = hs."school_id"
GROUP BY
    si."district_psa"
ORDER BY 
    si."district_psa";

--11. Now include the total crimes for each crime group per PSA
SELECT
    itp."district_psa", 
    itp."crime_group", 
    COUNT(*) AS "total_crimes"
FROM
    "Incidents_Time_Place" itp
GROUP BY
    itp."district_psa", 
    itp."crime_group"
ORDER BY
    itp."district_psa", 
    COUNT(*) DESC;

--12. Combined query from #10 and #11 queries
SELECT 
    a."district_psa",
    a."average_percent_attending_90",
    a."average_percent_proficient_all_keystones",
    b."crime_group",
    b."total_crimes"
FROM 
    (
        SELECT 
                        si."district_psa", 
                    AVG(hs."percent_students_attending_at_least_90_percent") AS "average_percent_attending_90", 
                  AVG(hs."percent_11th_grade_students_proficient_all_three_keystones") AS "average_percent_proficient_all_keystones"
                FROM 
                    "School_Info" si
                JOIN
                    "High_School_Metric_Scores" hs
                ON
                    si."school_id" = hs."school_id"
                GROUP BY
                    si."district_psa"
    ) a
JOIN 
    (
        SELECT 
            itp."district_psa",
            itp."crime_group",
            COUNT(*) AS "total_crimes"
        FROM 
            "Incidents_Time_Place" itp
        GROUP BY 
            itp."district_psa", 
                        itp."crime_group"
    ) b 
ON 
    a."district_psa" = b."district_psa"
ORDER BY 
    a."district_psa", 
    b."district_psa" DESC;

--13. Total Crimes and Average of High School Metrics
SELECT 
    a."district_psa",
    a."average_percent_attending_90",
    a."average_percent_proficient_all_keystones",
    b."total_crimes"
FROM 
    (
        SELECT 
                        si."district_psa", 
                    AVG(hs."percent_students_attending_at_least_90_percent") AS "average_percent_attending_90", 
                  AVG(hs."percent_11th_grade_students_proficient_all_three_keystones") AS "average_percent_proficient_all_keystones"
                FROM 
                    "School_Info" si
                JOIN
                    "High_School_Metric_Scores" hs
                ON
                    si."school_id" = hs."school_id"
                GROUP BY
                    si."district_psa"
    ) a
JOIN 
    (
        SELECT 
            itp."district_psa",
            COUNT(*) AS "total_crimes"
        FROM 
            "Incidents_Time_Place" itp
        GROUP BY 
            itp."district_psa" 
    ) b 
ON 
    a."district_psa" = b."district_psa"
ORDER BY 
    a."district_psa";

---------k-8 School metrics compared to crime in same PSA---------------
--14. Total Crimes and Average of k-8 School metrics 
SELECT 
        si."district_psa", 
        AVG(ks."pssa_ela_percent_students_proficient_or_advanced_grades_3_to_8") AS "average_ela_proficiency", 
    AVG(ks."pssa_math_percent_students_proficient_or_advanced_grades_3_to_8") AS "average_math_proficiency", 
        AVG(ks."percent_students_attending_at_least_90_percent") AS "average_percent_attending_90"
FROM 
        "School_Info" si
JOIN
    "KtoEight_School_Metric_Scores" ks
ON
    si."school_id" = ks."school_id"
JOIN 
    (
        SELECT 
            itp."district_psa",
            COUNT(*) AS "total_crimes"
        FROM 
            "Incidents_Time_Place" itp
        GROUP BY 
            itp."district_psa" 
    ) b 
ON 
        si."district_psa" = b."district_psa"
GROUP BY
    si."district_psa", 
        b."total_crimes"
ORDER BY 
    si."district_psa";

-----elementary metrics and crime data for same PSA--------------

---15. Total Crimes and Average of elementary School metrics 
SELECT 
        si."district_psa", 
        AVG(es."pssa_ela_percent_students_proficient_or_advanced_grades_3_to_8") AS "average_ela_proficiency", 
        AVG(es."pssa_math_percent_students_proficient_or_advanced_grades_3_to_8") AS "average_math_proficiency", 
        AVG(es."percent_students_attending_at_least_90_percent") AS "average_percent_attending_90"
FROM 
        "School_Info" si
JOIN
    "Elementary_School_Metric_Scores" es
ON
    si."school_id" = es."school_id"
JOIN 
    (
        SELECT 
            itp."district_psa",
            COUNT(*) AS "total_crimes"
        FROM 
            "Incidents_Time_Place" itp
        GROUP BY 
            itp."district_psa" 
    ) b 
ON 
        si."district_psa" = b."district_psa"
GROUP BY
    si."district_psa", 
        b."total_crimes"
ORDER BY 
    si."district_psa";