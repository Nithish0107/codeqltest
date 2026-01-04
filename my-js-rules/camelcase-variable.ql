/**
* @name Non-camelCase JavaScript variable names
* @kind problem
* @problem.severity error
* @precision high
* @tags code-quality maintainability
*/
 
import javascript
 
predicate isNotCamelCase(string name) {
  not name.matches("[a-z][a-zA-Z0-9]*")
}
 
from VariableDeclarator v
where
  isNotCamelCase(v.getName())
select
  v,
  "Variable name '" + v.getName() + "' should be camelCase."
