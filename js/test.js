// ❌ Bad function name
function Bad_function() {
  return 1;
}
 
// ❌ Bad variable name
var bad_variable = 10;
 
// ❌ Bad class name
class bad_class {
  constructor() {
    this.Bad_property = bad_variable;
  }
}
 
// ✅ Correct examples (should NOT alert)
function goodFunction() {
  let goodVariable = 5;
  return goodVariable;
}
