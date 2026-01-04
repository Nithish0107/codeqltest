function Bad_function_name(bad_param_name, AnotherBadParam) {
  let localValue = 10;
 
  function inner_BadFunction(Inner_bad_param) {
    let result = Inner_bad_param + localValue;
    return result;
  }
 
  const Arrow_BadFunction = (Arrow_bad_param) => {
    return Arrow_bad_param * 2;
  };
 
  let firstResult = inner_BadFunction(bad_param_name);
  let secondResult = Arrow_BadFunction(AnotherBadParam);
 
  return firstResult + secondResult;
}
 
function goodFunction(goodParamOne, goodParamTwo) {
  return goodParamOne + goodParamTwo;
}
 
Bad_function_name(5, 10);
