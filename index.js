var through = require('through');

module.exports = function (file) {
  if (!/\.(js|jsx|coffee|ls)$/.test(file)) return through();
  var data = '';

  var tr = through();
  return tr;
};
