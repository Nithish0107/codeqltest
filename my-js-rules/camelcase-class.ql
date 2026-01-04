/**
* @name Non-camelCase JavaScript class names
* @kind problem
* @problem.severity error
* @precision high
* @tags code-quality maintainability
*/
 
import javascript
 
predicate isNotCamelCase(string s) {
  not s.matches("[A-Z][a-zA-Z0-9]*")
}
 
from ClassDeclaration c, string name
where
  name = c.getName() and
  isNotCamelCase(name)
select
  c,
  "Class name '" + name + "' should use PascalCase."
