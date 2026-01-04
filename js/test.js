function Bad_function_name() {
  let bad_variable_name = 10;
  let Another_Bad_Variable = 20;
 
  function inner_BadFunction() {
    let inner_bad_variable = 5;
    return inner_bad_variable;
  }
 
  let result_value = inner_BadFunction();
  return result_value + bad_variable_name;
}
 
function another_bad_function() {
  var wrong_var_name = 100;
  let CorrectVariable = 50;
 
  function Nested_bad_function() {
    let nested_wrong_name = 1;
    return nested_wrong_name;
  }
 
  return wrong_var_name + Nested_bad_function();
}
 
