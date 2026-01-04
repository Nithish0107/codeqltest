/**
* @name Function name should be camelCase
* @description Detects JavaScript functions with underscore in name
* @kind problem
* @problem.severity warning
*/
 
import javascript
 
from FunctionDeclaration f
where
  f.getName().matches(".*_.*")
select f, "Function name contains underscore. Use camelCase."
