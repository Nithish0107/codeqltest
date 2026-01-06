/**
* @name Possible missing null check before property access
* @description Finds property accesses where the base expression is literally null.
* @kind problem
* @problem.severity warning
* @precision high
* @tags reliability correctness
* @id js/missing-null-check-property-access
*/
 
import javascript
 
from PropAccess pa
where pa.getBase() instanceof NullLiteral
select pa,
  "Property access on a value that is definitely null (missing null check?)."
