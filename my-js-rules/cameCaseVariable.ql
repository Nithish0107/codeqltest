/**
* @name Non-camelCase JavaScript variable
* @description Detects JavaScript variables whose names are not camelCase.
* @kind problem
* @problem.severity warning
* @precision high
* @tags code-quality
* @id js/non-camelcase-variable
*/
 
import javascript
 
from VariableDeclarator vd
where
  vd.getName() != "" and
  not vd.getName().matches("[a-z][a-zA-Z0-9]*")
select vd,
  "Variable '" + vd.getName() + "' should be camelCase."
