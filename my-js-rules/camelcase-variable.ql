/**
* @name Non-camelCase JavaScript variable names
* @kind problem
* @problem.severity error
* @precision high
* @tags code-quality maintainability
*/
 
import javascript
 
predicate isNotCamelCase(string s) {
  not s.matches("[a-z][a-zA-Z0-9]*")
}
 
from VariableDeclarator v, string name
where
  name = v.getName() and
  isNotCamelCase(name)
select
  v,
  "Variable name '" + name + "' should be camelCase."
