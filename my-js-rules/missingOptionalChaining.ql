/**
* @name Missing optional chaining
* @description Detects property access that does not use optional chaining.
* @kind problem
* @problem.severity warning
* @precision medium
* @tags reliability code-quality
* @id js/missing-optional-chaining
*/
 
import javascript
import javascript/optional-chaining
 
/**
* BAD: normal property access (obj.prop)
*/
from PropertyAccess pa
where
  not exists(OptionalPropertyAccess opa |
    opa.getPropertyName() = pa.getPropertyName() and
    opa.getQualifier() = pa.getQualifier()
  )
select
  pa,
  "BAD: Property access without optional chaining. Consider using '?.'."
