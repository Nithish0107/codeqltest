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
  vd.getId() instanceof Identifier and
  not vd.getId().(Identifier).getName().matches("[a-z][a-zA-Z0-9]*")
select vd,
  "Variable '" + vd.getId().(Identifier).getName() + "' should be camelCase."
