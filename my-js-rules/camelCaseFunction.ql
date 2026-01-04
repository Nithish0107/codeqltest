/**
* @name JavaScript function names should be camelCase
* @description Flags function names that are not camelCase
* @kind problem
* @problem.severity warning
* @precision medium
*/
 
import javascript
 
/**
* Matches names that are NOT camelCase.
* Allows: myFunction, myFunctionName
* Flags: my_function, MyFunction, my-function
*/
predicate isNotCamelCase(string name) {
  not name.matches("[a-z][a-zA-Z0-9]*")
}
 
from Function f
where
  f.hasName() and
  isNotCamelCase(f.getName())
select
  f,
  "Function name '" + f.getName() + "' should be camelCase."
