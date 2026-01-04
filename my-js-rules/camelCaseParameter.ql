/**
* @name Non-camelCase JavaScript parameter
* @description Detects JavaScript function parameters that are not camelCase.
* @kind problem
* @problem.severity warning
* @precision high
* @tags code-quality
*/
 
import javascript
 
from Identifier id
where
  id.isParameter() and
  id.getName() != "" and
  not id.getName().matches("[a-z][a-zA-Z0-9]*")
select id,
  "Parameter '" + id.getName() + "' should be camelCase."
