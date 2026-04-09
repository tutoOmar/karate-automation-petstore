function fn() {
  var timestamp = java.lang.System.currentTimeMillis() + '';
  return {
    username: 'omar_' + timestamp,
    email: 'test_' + timestamp + '@mail.com'
  };
}
