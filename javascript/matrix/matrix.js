function Matrix(input) {
  this.rows = input.split('\n').map((row) => {
    return row.split(' ').map((i) => parseInt(i));
  });

  this.columns = [];
  for (var i = 0; i < this.rows.length; i++) {
    this.columns[i] = this.rows.map((row) => row[i]);
  }
}

module.exports = Matrix;
