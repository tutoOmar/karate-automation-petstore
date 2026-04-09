function fn() {
  var env = karate.env || 'dev';
  karate.log('karate.env system property was:', env);

  var config = {
    env: env,
    baseUrl: 'https://petstore.swagger.io/v2'
  };

  if (env === 'staging') {
    config.baseUrl = 'https://petstore.swagger.io/v2';
  }

  return config;
}