/**
* @name Non-camelCase JavaScript parameter
* @description Detects JavaScript function parameters whose names are not camelCase.
* @kind problem
* @problem.severity warning
* @precision high
* @tags code-quality
*/
 
import javascript
 
from Parameter p
where
  p.hasName() and
  not p.getName().matches("[a-z][a-zA-Z0-9]*")
select p,
  "Parameter '" + p.getName() + "' should be camelCase."
