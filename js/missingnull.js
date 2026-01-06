// test-null-access.js
 
// 1. Definitely null: always bad.
function alwaysNull() {
  const obj = null;
  // Should be flagged: property access on null.
  return obj.foo;
}
 
// 2. Possibly null argument: missing null check.
function maybeNull(user) {
  // If caller passes null, this is a missing null check.
  return user.name;
}
 
// 3. Correct pattern with null check.
function safe(user) {
  if (user == null) {
    return "no user";
  }
  return user.name;
}
 
// 4. DOM-style example.
function clickButton() {
  const btn = document.getElementById("submit");
  // If the element is missing, btn will be null.
  btn.click(); // Typical "Cannot read properties of null" case.
}
