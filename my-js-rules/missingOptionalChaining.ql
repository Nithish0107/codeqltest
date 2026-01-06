/**
* @name Missing optional chaining
* @description Detects property access that does not use optional chaining.
* @kind problem
* @problem.severity warning
* @precision medium
* @tags reliability code-quality
* @id js/missing-optional-chaining
*/
 
import javascript
 
from PropertyAccess pa
where
  not pa instanceof OptionalPropertyAccess
select
  pa,
  "Property access without optional chaining. Consider using '?.' to avoid runtime errors."
