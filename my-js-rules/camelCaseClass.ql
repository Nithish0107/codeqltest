/**
* @name Non-camelCase JavaScript class name
* @description Class names should be PascalCase.
* @kind problem
* @problem.severity error
* @precision high
* @tags quality
*       maintainability
*/
import javascript
 
from Class c
where
  c.getName() != "" and
  not c.getName().matches("[A-Z][a-zA-Z0-9]*")
select c, "Class name '" + c.getName() + "' should be PascalCase."
