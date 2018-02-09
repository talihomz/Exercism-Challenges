function Pangram(input){
  this.input = input.toLowerCase();
}

Pangram.prototype.isPangram = function() {

  // check length
  if(this.input.length == 0)
    return false;

  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  var sentenceKeys = {};

  for(var a=0; a < this.input.length; a++)
  {
    var ch = this.input[a];

    if(ch.match(/[a-z]/) == null)
      continue;

    sentenceKeys[ch] = sentenceKeys[ch] == null ? 1 : sentenceKeys[ch] + 1;
  }

  var keyString = Object.keys(sentenceKeys).sort().join("");

  return alphabet == keyString;
}

module.exports = Pangram;
