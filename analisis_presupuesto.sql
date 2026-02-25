-- Análisis de desvío presupuestario por proyecto
SELECT 
    Project_Name,
    Total_Budget,
    Actual_Spent,
    (Actual_Spent - Total_Budget) AS Overspent_Amount,
    ROUND(((Actual_Spent - Total_Budget) / Total_Budget) * 100, 2) AS Deviation_Percentage
FROM Projects
WHERE Actual_Spent > Total_Budget
ORDER BY Deviation_Percentage DESC;
