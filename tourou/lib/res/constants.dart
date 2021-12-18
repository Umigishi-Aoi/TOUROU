const double mainTextSize = 24;
const int imageDuration = 1;
const flavor = String.fromEnvironment('FLAVOR');

enum Flavor{
  dev,
  stg,
  prod,
  undefined
}

Flavor makeFlavor(String flavor){
  try{
    return Flavor.values.byName(flavor);
  }catch(e){
    return Flavor.undefined;
  }
}