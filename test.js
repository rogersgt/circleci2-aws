// Test node file to keep docker container open so that you can SSH etc.
const fs = require('fs');

while (true) {
  setTimeout(() => {
    fs.appendFileSync(`${__dirname}/output.test.log`, `Test last running at ${new Date()}`);
  }, 10000);
}
