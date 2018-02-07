function Cipher(key){

  if(key == null)
  {
    // generate for us a new key
    var lowerA = 97;
    var lowerZ = 122;
    var randomCharArray = [];

    for(var a = 0; a < 100; a++)
    {
      // generate between lowerA and lowerZ
      var min = Math.ceil(lowerZ);
      var max = Math.floor(lowerA);
      var num = Math.floor(Math.random() * (max - min + 1)) + min;

      // convert to char
      var char = String.fromCharCode(num);

      // add to char array
      randomCharArray.push(char);
    }

    // join array to get key
    this.key = randomCharArray.join('');

    console.log("Random key", this.key);

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

  }
}

Cipher.prototype.encode = function(plaintext){

  // convert each char in key to its ascii value

  // for each character in the plain plaintext
  // 1. Convert to ascii code
  // 2. Get corresponding ascii character on the key
  // 3. Get the corresponding character's shift value
  // 4. Add the shift to plaintext character
  // 5. Add ciphered character to ciphertext randomCharArray

  // return joined array
}


Cipher.prototype.decode = function(ciphertext){
  // convert each char in key to its ascii value

  // for each character in the plain plaintext
  // 1. Convert to ascii code
  // 2. Get corresponding ascii character on the key
  // 3. Get the corresponding character's shift value
  // 4. Subtract the shift to plaintext character
  // 5. Add ciphered character to ciphertext randomCharArray

  // return joined array
}

module.exports  = Cipher;
