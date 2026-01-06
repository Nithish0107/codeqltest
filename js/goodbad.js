function test(user, order) {
  console.log(user.email);          // ⚠️ alert
  console.log(order.customer.id);   // ⚠️ alert
}
