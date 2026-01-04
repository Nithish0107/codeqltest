/**
* @name Non-camelCase JavaScript class names
* @kind problem
* @problem.severity error
* @precision high
* @tags code-quality maintainability
*/
 
import javascript
 
predicate isNotCamelCase(string name) {
  not name.matches("[a-z][a-zA-Z0-9]*")
}
 
from ClassDeclaration c
where
  isNotCamelCase(c.getName())
select
  c,
  "Class name '" + c.getName() + "' should be camelCase."
