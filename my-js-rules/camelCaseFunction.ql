/**
* @name JavaScript function name is not camelCase
* @description Detects JavaScript functions whose names are not camelCase
* @kind problem
* @problem.severity warning
* @precision medium
* @id js/camelcase-function-name
*/
 
import javascript
 
predicate isNotCamelCase(string name) {
  not name.matches("[a-z][a-zA-Z0-9]*")
}
 
from Function f
where
  f.hasName() and
  isNotCamelCase(f.getName())
select
  f,
  "Function name '" + f.getName() + "' should be camelCase."
