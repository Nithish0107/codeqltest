/**
* @name Missing optional chaining
* @description Detects property access without optional chaining.
* @kind problem
* @problem.severity warning
* @precision medium
* @tags reliability
* @id js/missing-optional-chaining
*/
 
import javascript
 
from PropertyAccess pa
where
  not exists(OptionalChainExpr oce |
    oce.getChild(0) = pa
  )
select
  pa,
  "BAD: Property access without optional chaining. Consider using '?.'."
