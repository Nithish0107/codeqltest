// ===============================
// FUNCTION + PARAMETER + VARIABLE TEST
// ===============================
 
// ❌ Bad function name + bad parameters
function bad_function_name(Bad_param, another_param) {
  // ❌ Bad variables
  let Bad_variable = 10;
  const Another_Bad_Var = 20;
 
  // ✅ Good variable
  let goodVar = 5;
 
  // ❌ Nested bad function + parameter
  function Inner_Function(bad_inner_param) {
    let inner_BadVar = bad_inner_param + Bad_variable;
    return inner_BadVar;
  }
 
  let result_value = Inner_Function(Another_Bad_Var);
  return result_value + goodVar;
}
 
// ❌ Function expression with bad name
const Another_badFunction = function (Wrong_paramName) {
  let local_bad_var = Wrong_paramName * 2;
  return local_bad_var;
};
 
// ❌ Arrow function with bad parameter + variable
const arrow_bad_function = (BadArrow_param) => {
  let Arrow_Bad_Var = BadArrow_param + 10;
  return Arrow_Bad_Var;
};
 
// ❌ Multiple variables in one scope
function process_Data(BadInput_value) {
  let Temp_Result = 0;
  let loop_counter = 0;
 
  for (loop_counter = 0; loop_counter < BadInput_value; loop_counter++) {
    Temp_Result += loop_counter;
  }
 
  return Temp_Result;
}
 
// ❌ Function with default parameter
function calculate_total(Bad_price, tax_rate) {
  let Total_Amount = Bad_price + Bad_price * tax_rate;
  return Total_Amount;
}
 
// ❌ Callback parameter
setTimeout(function Callback_Function(BadTimeout_param) {
  let Timeout_Result = BadTimeout_param + 1;
  console.log(Timeout_Result);
}, 1000);
 
// ❌ Object destructuring variable
function handle_Response({ Bad_Response }) {
  let Parsed_Response = Bad_Response;
  return Parsed_Response;
}
 
// ❌ Try/catch variable
function risky_operation(BadValue) {
  try {
    let Risky_Result = BadValue / 0;
    return Risky_Result;
  } catch (Error_Object) {
    console.error(Error_Object);
  }
}
 
// ❌ Class-like factory function
function create_user(Bad_UserName, User_age) {
  let User_Object = {
    name_value: Bad_UserName,
    age_value: User_age
  };
  return User_Object;
}
 
// ===============================
// ✅ CORRECT CODE (should NOT alert)
// ===============================
 
function goodFunction(goodParam) {
  let goodVariable = goodParam + 1;
  return goodVariable;
}
 
const goodArrowFunction = (goodParam) => {
  let localValue = goodParam * 2;
  return localValue;
};
