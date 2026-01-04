/**
* @name Non-camelCase JavaScript variable
* @description JavaScript variable names should be camelCase
* @kind problem
* @problem.severity warning
* @precision high
* @tags code-quality
*/
 
import javascript
 
from VariableDeclarator vd, Identifier id
where
  id = vd.getId() and
  not id.getName().matches("[a-z][a-zA-Z0-9]*")
select id,
  "Variable '" + id.getName() + "' should be camelCase."
