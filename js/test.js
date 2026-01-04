// ❌ Not camelCase (snake_case)
function bad_function_name() {
  return 1;
}
 
// ❌ Not camelCase (PascalCase)
function BadFunctionName() {
  return 2;
}
 
// ❌ Not camelCase (contains underscore)
const another_bad_function = function () {
  return 3;
};
 
// ❌ Not camelCase (kebab-like via string name)
const bad_function_arrow = () => {
  return 4;
};
 
// ✅ Correct camelCase (should NOT alert)
function goodFunctionName() {
  return 5;
}
