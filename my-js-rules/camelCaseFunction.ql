/**
* @name JavaScript function name should be camelCase
* @description Finds JavaScript functions whose names are not camelCase
* @kind problem
* @problem.severity warning
* @precision medium
* @id js/custom/camelcase-function
*/
 
import javascript
 
predicate isNotCamelCase(string name) {
  not name.matches("[a-z][a-zA-Z0-9]*")
}
 
from Function f, string name
where
  name = f.getName() and
  isNotCamelCase(name)
select f,
  "Function name '" + name + "' should be camelCase."
