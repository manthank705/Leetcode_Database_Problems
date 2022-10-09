# Write your MySQL query statement

UPDATE SALARY

    SET sex = CASE WHEN sex = 'f' THEN 'm'
    ELSE 'f'
    END 