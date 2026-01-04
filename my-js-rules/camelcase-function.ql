/**
* @name Non-camelCase JavaScript function names
* @kind problem
* @problem.severity error
* @precision high
* @tags code-quality maintainability
*/
 
import javascript
 
predicate isNotCamelCase(string s) {
  not s.matches("[a-z][a-zA-Z0-9]*")
}
 
from Function f, string name
where
  name = f.getName() and
  isNotCamelCase(name)
select
  f,
  "Function name '" + name + "' should be camelCase."
