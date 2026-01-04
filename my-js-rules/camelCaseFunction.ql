/**
 * @id js/camelcase-function-name
 * @name Function name is not camelCase
 * @description Flags JavaScript functions that contain underscores
 * @kind problem
 * @severity warning
 */
 
import javascript
 
from Function f
where
  f.getName() != "" and
  f.getName().matches(".*_.*")
select
  f,
  "Function name '" + f.getName() + "' should be camelCase."
 
