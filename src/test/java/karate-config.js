function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    myVarName: 'someValue'
  }
  karate.configure('ssl', true);
  karate.configure('connectTimeout', 10000);
  if (env == 'dev') {
    config.urlBase='https://serverest.dev'
  } else if (env == 'e2e') {
    // customize-m
  }
  return config;
}
