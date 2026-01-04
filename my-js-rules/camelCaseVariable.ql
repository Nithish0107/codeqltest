/**
* @name Non-camelCase JavaScript variable name
* @description Variable names should be in camelCase.
* @kind problem
* @problem.severity error
* @precision high
* @tags quality
*       maintainability
*/
import javascript
 
from Variable v
where
  v.getName() != "" and
  not v.getName().matches("[a-z][a-zA-Z0-9]*")
select v, "Variable name '" + v.getName() + "' should be camelCase."
