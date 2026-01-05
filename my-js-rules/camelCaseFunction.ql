/**
* @name Non-camelCase JavaScript function name
* @description Detects JavaScript functions whose names are not camelCase.
* @kind problem
* @problem.severity warning
* @precision medium
* @id js/non-camelcase-function-name
*/
 
import javascript
 
from Function f
where
  f.getName() != "" and
  not f.getName().matches("[a-z][a-zA-Z0-9]*")
select f,
  "Function name '" + f.getName() + "' should be camelCase."
