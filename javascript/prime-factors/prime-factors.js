function PrimeFactors() {

}

PrimeFactors.prototype.for = function(input) {

  // 84 => [ 2, 2, 3, 7 ]
  // steps for 84
  // 0. Start with divisor = 2, input = 84, result = [], current = input
  // 1. Get (current % divisor), mod = 0
  // 2. Since mod = 0, result = [ 2 ], divisor = 2, current = 42
  // 3. End of first pass, current = 42, divisor = 2, result = [ 2 ]
  // 4. Repeat step 1, mod = 0
  // 5. Since mod = 0, result = [ 2, 2 ], divisor = 2, current = 21
  // 6. End of second pass, current = 21, divisor = 2, result = [ 2, 2 ]
  // 7. Repeat step 1, mod > 1
  // 8. Since mod = 1, result = [ 2, 2 ], divisor = 3
  // 9. Repeat step 1, mod = 0
  // 10. Since mod = 0, result = [ 2, 2, 3 ], divisor = 3, current = 7
  // 11. End of third pass, current = 7, divisor = 3, result = [ 2, 2, 3 ]
  // 12. Repeat step 1, mod > 0
  // 13. Since mod > 0, divisor = 4
  // 14. Repeat step 1, mod > 0
  // 15. Since mod > 0, divisor = 5
  // 16. Repeat step 1, mod > 0
  // 17. Since mod > 0, divisor = 6
  // 18. Repeat step 1, mod > 0
  // 17. Since mod > 0, divisor = 7
  // 18. Repeat step 1, mod = 0
  // 19. Since mod = 0, result = [ 2, 2, 3, 7 ], divisor = 7, current = 1
  // 20. Since current = 1, return result


  var result = [];
  var base_case = 2;
  var current = input;

  if (input == 1) {
    return result;
  } else {
    isDivisor(input, result, base_case);
  }

  console.log(current);

  return result;
}

/*
function isDivisor(curre, result, base_case) {
  if (input % base_case == 0) {
    results.push(base_case);
    current = input / base_case;
    // call this method again
  } else {
    base_case++;
  }
}
*/
module.exports = new PrimeFactors()
