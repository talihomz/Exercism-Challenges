function SpaceAge(inputAgeInSeconds){
  this.seconds = inputAgeInSeconds;
  this.earthAge = this.seconds / 31557600;
  this.earthAgeMapping = {
    "mercury" : 0.2408467,
    "venus" : 0.61519726,
    "mars" : 1.8808158,
    "jupiter" : 11.862615,
    "saturn" : 29.447498,
    "uranus" : 84.016846,
    "neptune" : 164.79132
  };
}

SpaceAge.prototype.onMercury = function(){
  return getFormatedResult(this.earthAge / this.earthAgeMapping["mercury"]);
}

SpaceAge.prototype.onVenus = function(){
  return getFormatedResult(this.earthAge / this.earthAgeMapping["venus"]);
}

SpaceAge.prototype.onEarth = function(){
  return getFormatedResult(this.earthAge);
}

SpaceAge.prototype.onMars = function(){
  return getFormatedResult(this.earthAge / this.earthAgeMapping["mars"]);
}

SpaceAge.prototype.onJupiter = function(){
  return getFormatedResult(this.earthAge / this.earthAgeMapping["jupiter"]);
}

SpaceAge.prototype.onSaturn = function(){
  return getFormatedResult(this.earthAge / this.earthAgeMapping["saturn"]);
}

SpaceAge.prototype.onUranus = function(){
  return getFormatedResult(this.earthAge / this.earthAgeMapping["uranus"]);
}

SpaceAge.prototype.onNeptune = function(){
  return getFormatedResult(this.earthAge / this.earthAgeMapping["neptune"]);
}

function getFormatedResult(input){
  return parseFloat(input.toFixed(2));
}

module.exports = SpaceAge;
