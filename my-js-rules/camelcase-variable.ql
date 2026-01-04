/**
* @name Non-camelCase JavaScript variable name
* @description JavaScript variables should be camelCase
* @kind problem
* @problem.severity warning
* @precision high
* @tags code-quality
*/
 
import javascript
 
from Variable v
where
  not v.getName().matches("[a-z][a-zA-Z0-9]*")
select v,
  "Variable '" + v.getName() + "' should be camelCase."
