function PrimeFactors() {

}

PrimeFactors.prototype.for = function(input) {

  var divisor = 2;
  var result = [];
  var current = input;

  while(current > 1)
  {
    if((current % divisor) == 0){
      result.push(divisor);
      current = current / divisor;
    }else{
      divisor++;
    }
  }

  return result;
}

module.exports = new PrimeFactors()
