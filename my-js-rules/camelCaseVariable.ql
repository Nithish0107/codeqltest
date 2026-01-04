/**
* @name Non-camelCase JavaScript variable
* @description JavaScript variable names should be camelCase
* @kind problem
* @problem.severity warning
* @precision high
* @tags code-quality
*/
 
 import javascript
 
from VariableDeclarator vd, Identifier id, string name
where
  id = vd.getId() and
  name = id.getName() and
  // Filters
  name.length() > 1 and
  not name.matches("[A-Z0-9_]+") and // Allow CONSTANTS
  not name.matches("[A-Z][a-zA-Z0-9]*") and // Allow Classes
  not name.matches("[a-z][a-zA-Z0-9]*") // Flag if not camelCase
select vd, "Variable '" + name + "' should be camelCase, PascalCase, or UPPER_SNAKE_CASE."
 
