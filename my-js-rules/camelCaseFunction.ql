/**
* @name Function name is not camelCase
* @description Flags JavaScript functions with underscores in the name
* @kind problem
* @severity warning
*/
 
import javascript
 
from Function f
where
  f.hasName() and
  f.getName().matches(".*_.*")
select
  f,
  "Function name '" + f.getName() + "' should be camelCase."
