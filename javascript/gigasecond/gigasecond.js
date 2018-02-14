function Gigasecond(inputDate) {
  this.milliseconds = inputDate.getTime() + 10**12;
}

Gigasecond.prototype.date = function() {
  return new Date(this.milliseconds);
}

module.exports = Gigasecond;
