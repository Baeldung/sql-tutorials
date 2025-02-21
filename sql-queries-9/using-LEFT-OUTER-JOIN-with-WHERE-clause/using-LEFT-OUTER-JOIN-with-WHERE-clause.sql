SELECT columns
FROM left_table
LEFT OUTER JOIN right_table
ON left_table.common_column = right_table.common_column
WHERE condition;
