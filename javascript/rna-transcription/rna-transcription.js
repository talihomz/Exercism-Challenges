
function DnaTranscriber(){

}

var data = {
  "G" : "C",
  "C" : "G",
  "T" : "A",
  "A" : "U"
};

DnaTranscriber.prototype.toRna = function(gene){
  var input = gene.split("");
  var output = [];

  for(var a=0; a < input.length; a++)
  {
    var geneLetter = input[a];

    // check if the gene is valid
    if(data[geneLetter] == null)
      throw new Error('Invalid input');

    output.push(data[input[a]]);
  }

  return output.join("");
};


module.exports = DnaTranscriber;
