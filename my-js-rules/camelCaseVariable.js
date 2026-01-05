/**
* @name Non-camelCase JavaScript variable
* @description JavaScript variable names should be camelCase
* @kind problem
* @problem.severity error
* @precision high
* @tags code-quality
* @id js/non-camelcase-variable-name
*/
 
import javascript
 
from VariableDeclarator v
where
  v.getName() != "" and
  not v.getName().matches("[a-z][a-zA-Z0-9]*")
select v,
  "Variable '" + v.getName() + "' should be camelCase."
