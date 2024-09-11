select count(*) from flaskapp.dbo.empregado;

ALTER TABLE flaskapp.dbo.empregado ADD salario INT;

-- Step 3: Create a temporary table to hold ranked data
WITH RankedEmpregados AS (
    SELECT
        *,
        ROW_NUMBER() OVER (ORDER BY NEWID()) AS rn,
        COUNT(*) OVER () AS total_count
    FROM flaskapp.dbo.empregado
)
SELECT * INTO #TempRankedEmpregados FROM RankedEmpregados;

-- Step 4: Update the temporary table with random salary values
UPDATE #TempRankedEmpregados
SET salario = CASE
    WHEN rn <= 0.2 * total_count THEN FLOOR(20001 + (30000 - 20001 + 1) * RAND(CHECKSUM(NEWID())))
    ELSE FLOOR(3000 + (20000 - 3000 + 1) * RAND(CHECKSUM(NEWID())))
END;

-- Step 5: Update the original table with values from the temporary table
UPDATE e
SET e.salario = t.salario
FROM flaskapp.dbo.empregado e
JOIN #TempRankedEmpregados t ON e.Id = t.Id;  -- Assuming 'Id' is the primary key

-- Step 6: Drop the temporary table
DROP TABLE #TempRankedEmpregados;