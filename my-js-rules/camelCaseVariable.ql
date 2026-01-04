/**
* @name Non-camelCase JavaScript variable
* @description JavaScript variable names should be camelCase
* @kind problem
* @problem.severity warning
* @precision high
* @tags code-quality
*/
 
import javascript-names
 
from NameDeclaration nd
where
  nd.getKind() = "variable" and
  nd.hasName() and
  not nd.getName().matches("[a-z][a-zA-Z0-9]*")
select nd,
  "Variable '" + nd.getName() + "' should be camelCase."
