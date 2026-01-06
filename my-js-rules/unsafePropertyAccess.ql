/**
* @name Unsafe property access
* @description Heuristically detects property access without optional chaining.
* @kind problem
* @problem.severity warning
* @precision low
* @tags reliability
* @id js/unsafe-property-access
*/
 
import javascript
 
from Expr e
where
  // Match property access inside expressions like (user.email)
  e.toString().matches(".*\\([a-zA-Z_][a-zA-Z0-9_]*(\\.[a-zA-Z_][a-zA-Z0-9_]*)+\\).*")
select
  e,
  "Property access without optional chaining. Consider using '?.'."
