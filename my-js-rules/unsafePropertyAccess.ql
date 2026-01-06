/**
* @name Unsafe property access
* @description Detects property access that may throw if the base object is null or undefined.
* @kind problem
* @problem.severity warning
* @precision medium
* @tags reliability code-quality
* @id js/unsafe-property-access
*/
 
import javascript
import javascript/property-access
 
from PropertyAccess pa
where
  // Ignore obvious literals like "abc".length
  not pa.getQualifier() instanceof Literal
select
  pa,
  "Property access may be unsafe. Consider adding a null check or using optional chaining (?.)."
