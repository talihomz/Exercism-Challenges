function Cipher(key){

  this.lowerA = 97;
  this.lowerZ = 122;

  if(key == null)
  {
    // generate for us a new key
    var randomCharArray = [];

    for(var a = 0; a < 100; a++)
    {
      // generate between lowerA and lowerZ
      var min = Math.ceil(this.lowerZ);
      var max = Math.floor(this.lowerA);
      var num = Math.floor(Math.random() * (max - min + 1)) + min;

      // convert to char
      var char = String.fromCharCode(num);

      // add to char array
      randomCharArray.push(char);
    }

    // join array to get key
    this.key = randomCharArray.join('');

  }else{

    // check the supplied key
    if(key.length == 0)
      throw new Error('Bad key');

    // check the key for upper case
    var lowerKey = key.toLowerCase();
    if(key != lowerKey)
      throw new Error('Bad key');

    // check if numberic
    if(key.match(/\d/))
      throw new Error('Bad key');

    this.key = key;

  }
}

Cipher.prototype.encode = function(plaintext){

  var dblshift = plaintext == this.key ? 2 : 1;
  var results = []
  // for each character in the plain plaintext
  for (var i = 0; i < plaintext.length; i++) {
    var c = plaintext.charCodeAt(i);
    var k = this.key.charCodeAt(i);
    var shift = (k - this.lowerA) * dblshift;
    newchar = c + shift;
    if (newchar > this.lowerZ) {
      var diff = newchar - this.lowerZ - 1;
      newchar = this.lowerA + diff;
    }
    results.push(String.fromCharCode(newchar));
  }

  // return joined array
  return results.join("");
}


Cipher.prototype.decode = function(ciphertext){

  var results = []
  // for each character in the plain plaintext
  for (var i = 0; i < ciphertext.length; i++) {
    var c = ciphertext.charCodeAt(i);
    var k = this.key.charCodeAt(i);
    var shift = (k - this.lowerA) * 1;
    var newchar = c - shift;
    if (newchar < this.lowerA) {
      var diff = this.lowerA - newchar - 1;
      newchar = this.lowerZ - diff;
    }
    results.push(String.fromCharCode(newchar));
  }

  // return joined array
  return results.join("");
}

module.exports  = Cipher;
