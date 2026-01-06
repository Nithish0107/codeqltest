/**
* @name Definite null property access
* @description Detects property access on a value that is definitely null.
* @kind problem
* @problem.severity error
* @precision high
* @tags reliability
* @id js/definite-null-property-access
*/
 
import javascript
 
from Expr::PropAccess pa
where
  pa.getQualifier() instanceof NullLiteral
select
  pa,
  "Property access on a value that is definitely null."
