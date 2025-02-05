# SQL Implicit Type Conversion Bug

This repository demonstrates a common SQL error involving implicit type conversion during an UPDATE statement. The bug arises from adding a string literal to a numeric column, leading to unexpected results due to the database attempting to implicitly convert the string to a number.  This implicit conversion can fail or produce unintended string concatenation if the target column is itself a string.

The `bug.sql` file contains the erroneous query, while `bugSolution.sql` provides the corrected version.  The README explains the problem and solution in detail.