/**
* @name Non-camelCase JavaScript parameter
* @description Function parameters should be camelCase.
* @kind problem
* @problem.severity error
* @precision high
* @tags code-quality
* @id js/non-camelcase-parameter-name
*/
 
import javascript
 
from Parameter p
where
  p.getName() != "" and
  not p.getName().matches("[a-z][a-zA-Z0-9]*")
select p,
  "Parameter '" + p.getName() + "' should be camelCase."
