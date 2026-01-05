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
 
from VariableDeclarator vd, Identifier id
where
  id = vd.getId() and
  not id.getName().matches("[a-z][a-zA-Z0-9]*")
select id,
  "Variable '" + id.getName() + "' should be camelCase."
 
