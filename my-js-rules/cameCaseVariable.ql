/**
* @name Non-camelCase JavaScript variable
* @description Detects JavaScript variables whose names are not camelCase.
* @kind problem
* @problem.severity warning
* @precision high
* @tags code-quality
* @id js/non-camelcase-variable
*/
 
import javascript
 
from NameDeclaration nd
where
  nd.getKind() = "variable" and
  nd.hasName() and
  not nd.getName().matches("[a-z][a-zA-Z0-9]*")
select nd,
  "Variable '" + nd.getName() + "' should be camelCase."
