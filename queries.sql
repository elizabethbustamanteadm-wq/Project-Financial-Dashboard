-- Análisis de Presupuesto vs Gasto Real por Proyecto
SELECT 
    Project_Name,
    Vendor_Name,
    Total_Budget,
    Actual_Spent,
    (Total_Budget - Actual_Spent) AS Budget_Variance,
    Status,
    End_Date
FROM 
    Projects_NY
ORDER BY 
    Actual_Spent DESC;