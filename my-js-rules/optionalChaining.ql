/**
* @name Optional chaining usage check
* @description Detects property access with and without optional chaining.
* @kind problem
* @problem.severity warning
* @precision medium
* @tags reliability code-quality
* @id js/optional-chaining-check
*/
 
import javascript
 
from PropertyAccess pa
select
  pa,
  case
    when pa.isOptional()
    then "GOOD: Optional chaining is used."
    else "BAD: Property access without optional chaining. Consider using '?.'."
  end
