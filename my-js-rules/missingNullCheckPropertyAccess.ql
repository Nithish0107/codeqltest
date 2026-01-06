/**
* @name Possible missing null check before property access
* @description Finds property accesses where the base value may be null or undefined.
* @kind path-problem
* @problem.severity warning
* @precision medium
* @tags reliability correctness
* @id js/missing-null-check-property-access
*/
 
import javascript
 
/**
* A property access (x.y or x["y"]).
*/
class AnyPropAccess extends Expr {
  AnyPropAccess() { this instanceof PropAccess }
}
 
/**
* A value that may be null or undefined.
*/
predicate mayBeNullOrUndefined(Expr e) {
  e.getType().isNullable() or e.getType().isUndefined()
}
 
from AnyPropAccess pa, Expr base
where
  base = pa.getBase() and
  mayBeNullOrUndefined(base) and
  // No obvious null/undefined check on the base expression in the same condition.
  not exists(IfStmt ifs |
    ifs.getCondition().(Expr).(BinaryExpr).getAnOperand() = base and
    ifs.getThen() = pa.getEnclosingStmt()
  )
select pa,
  "Possible missing null/undefined check before accessing this property."
