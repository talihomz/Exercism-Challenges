function Bob() {

}

Bob.prototype.hey = function(input) {

  // test if input is empty
  if (input.length == 0 || !input.match(/[a-zA-Z]/)) {
    if (!input.match(/\d/)) {
      return 'Fine. Be that way!';
    }
  }

  // test for questions
  if (input[input.length - 1] == '?') {
    if (input != input.toUpperCase()) {
      return 'Sure.';
    }
  }

  if (input.match(/\d/)) {
    if (input != input.toUpperCase()) {
      return 'Whatever.';
    }
  }

  // test for yelling
  if (input == input.toUpperCase()) {
    return 'Whoa, chill out!';
  }


  return 'Whatever.';
}

module.exports = Bob;
