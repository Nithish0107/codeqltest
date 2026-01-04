/**
* @name FORCE TEST – CodeQL alert verification
* @kind problem
* @problem.severity warning
*/
 
import javascript
 
from SourceFile f
select f, "FORCE TEST: CodeQL alerts pipeline is working."
