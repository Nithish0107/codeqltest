import javascript 
from Function f
where
  f.hasName() and
  not f.getName().matches("[a-z][a-zA-Z0-9]*")
select f, "Custom JS rule: Function name must be camelCase"
