The following SQL query attempts to update a column named 'salary' in a table named 'employees' based on certain conditions. However, it contains a subtle error related to data type handling and implicit type conversions.

```sql
UPDATE employees
SET salary = salary + '1000'
WHERE department = 'Sales';
```

The issue is that '1000' is treated as a string literal.  Most SQL dialects will attempt to implicitly convert it to a number for the addition, but this conversion can fail or lead to unexpected behavior if 'salary' is not a numeric type. If 'salary' is stored as a string (which it shouldn't be, but sometimes happens in legacy systems), the '+' operator might perform string concatenation instead of arithmetic addition. This would result in incorrect salary updates, such as '10000' becoming '100001000'.