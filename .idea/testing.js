function deviceNamesSystem(devicenames) {
  var i;
  var myarr = [];
  var test;
  for (var i = 0; i < devicenames.length; i++) {
    var k = 1;
    test = devicenames[i];
    while (myarr.includes(test)) {
      test = devicenames[i].concat(String(k));
      k++;
    }
    myarr.push(test);
  }
  return test;
  // Write your code here
}

print(deviceNamesSystem([test, testing, test]));
