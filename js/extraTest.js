function Another_Bad_Function(BadParam) {
  let Bad_Variable = 100;
 
  function inner_bad_function(InnerBadParam) {
    let Inner_Bad_Var = InnerBadParam + Bad_Variable;
    return Inner_Bad_Var;
  }
 
  return inner_bad_function(BadParam);
}
 
const arrow_BadFunction = (ArrowBadParam) => {
  let Arrow_Bad_Var = ArrowBadParam * 2;
  return Arrow_Bad_Var;
};
