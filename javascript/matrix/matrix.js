function Matrix(input) {
  this.rows = input.split('\n').map((row) => {
    return row.split(' ').map((i) => parseInt(i));
  });

  //this.columns = input.split('\n').map((row) => {

  //});

  // 1 2 3 => row[0]
  // 4 5 6 => row[1]
  // 7 8 9 => row[2]
  //
  // col[0] => row[0][0], row[1][0], row[2][0]
  // col[1] => row[0][1], row[1][1], row[2][1]
  // col[2] => row[0][2], row[1][2], row[2][2]

  this.columns = [];
  for (var i = 0; i < this.rows.length; i++) {
    this.columns[i] = this.rows.map((row) => {
      return row[i];
    });
  }
}

module.exports = Matrix;



/*

1. Solution 1?


row.length = 3



*/
