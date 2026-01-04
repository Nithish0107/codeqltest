/**
* @name Non-camelCase JavaScript identifiers
* @description Enforces camelCase naming for functions, variables, and classes
* @kind problem
* @problem.severity error
* @precision high
* @id js/camelcase-identifiers
* @tags code-quality maintainability
*/
 
import javascript
 
/**
* True if name is NOT camelCase
* Valid camelCase examples:
*   myFunction
*   myVariable
*   myClassName
*/
predicate isNotCamelCase(string name) {
  not name.matches("[a-z][a-zA-Z0-9]*")
}
 
/* ---------- FUNCTIONS ---------- */
from Function f
where
  f.hasName() and
  isNotCamelCase(f.getName())
select
  f,
  "Function name '" + f.getName() + "' should be camelCase."
 
/* ---------- VARIABLES ---------- */
from VariableDeclarator v
where
  isNotCamelCase(v.getName())
select
  v,
  "Variable name '" + v.getName() + "' should be camelCase."
 
/* ---------- CLASSES ---------- */
from ClassDeclaration c
where
  isNotCamelCase(c.getName())
select
  c,
  "Class name '" + c.getName() + "' should be camelCase."
