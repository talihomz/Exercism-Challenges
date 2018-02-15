function Binary(binaryInput) {
  var validInput = binaryInput.match(/^[1|0]+$/);
  this.binaryInput = validInput ? binaryInput : 0;
}

Binary.prototype.toDecimal = function() {
  var result = 0;
  var max = this.binaryInput.length - 1;
  for (var i = max; i >= 0; i--) {
    var digit = parseInt(this.binaryInput[i]);
    result += digit * (2 ** (max - i));
  }

  return result;
}

module.exports = Binary;
