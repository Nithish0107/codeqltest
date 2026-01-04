/**
* @name Non-camelCase JavaScript function names
* @kind problem
* @problem.severity error
* @precision high
* @tags code-quality maintainability
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
