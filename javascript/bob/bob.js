function Bob() {

}

Bob.prototype.hey = function(input) {

  input = input.trim();

  // Whoa, chill out!
  // 1. All upper case
  if(input == input.toUpperCase() && input.match(/[A-Z]/))
    return "Whoa, chill out!";

  // Whatever.
  // 1. Ends with a character
  // 2. Ends with whitespace
  // 3. Ends with '.'
  // 4. Ends with digit
  // 5. Ends with '!'
  if(input.match(/[a-z|\s|\.|\d|\!]$/))
    return "Whatever.";

  // Sure.
  // 1. Ends with a question mark
  // 2. Have whitespaces after the last question mark
  if(input.match(/\?[\s]*$/))
    return "Sure.";

  // Fine. Be that way!
  // 1. Whitespace only
  // 2. Empty starting
  // 3. Escape characters
  if(input.length == 0 || input.match(/[\x00-\x1F\x7F\s]/))
    return "Fine. Be that way!";
}

module.exports = Bob;
