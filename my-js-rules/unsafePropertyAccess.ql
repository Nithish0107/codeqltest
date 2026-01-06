/**
* @name Unsafe property access
* @description Detects possible unsafe object property access without null checks.
* @kind problem
* @problem.severity warning
* @precision low
* @tags reliability
* @id js/unsafe-property-access
*/
 
import javascript
 
from Expr e
where
  // Heuristic: dot access like a.b or a.b.c
  e.toString().matches(".*\\..*") and
 
  // Exclude obvious safe literals
  not e.toString().matches("\".*\"\\..*") and
  not e.toString().matches("\\d+\\..*")
select
  e,
  "Possible unsafe property access. Consider adding a null check or using optional chaining (?.)."
