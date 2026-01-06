/**
* @name Non-PascalCase JavaScript function name
* @kind problem
* @problem.severity warning
* @precision medium
* @id js/function-not-pascalcase
*/
import javascript
 
from Function f
where
  f.getName() != "" and
  not f.getName().matches("[A-Z][a-zA-Z0-9]*")
select f, "Function name '" + f.getName() + "' should be PascalCase."
