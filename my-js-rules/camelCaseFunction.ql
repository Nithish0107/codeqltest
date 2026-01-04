/**
* @name JavaScript function names should be camelCase
* @description Enforces camelCase naming for functions
* @kind problem
* @problem.severity warning
* @precision medium
*/
 
import javascript
 
predicate isNotCamelCase(string name) {
  not name.matches("[a-z][a-zA-Z0-9]*")
}
 
/**
* 1️⃣ Function declarations
*/
from FunctionDeclaration f
where
  f.getName() != null and
  isNotCamelCase(f.getName())
select
  f,
  "Function name '" + f.getName() + "' should be camelCase."
 
union
 
/**
* 2️⃣ Function expressions assigned to variables
*/
from VariableDeclarator v, FunctionExpression f
where
  v.getInit() = f and
  isNotCamelCase(v.getName())
select
  v,
  "Function name '" + v.getName() + "' should be camelCase."
 
union
 
/**
* 3️⃣ Arrow functions assigned to variables
*/
from VariableDeclarator v, ArrowFunctionExpr a
where
  v.getInit() = a and
  isNotCamelCase(v.getName())
select
  v,
  "Function name '" + v.getName() + "' should be camelCase."
