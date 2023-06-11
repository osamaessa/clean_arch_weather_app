
enum ConditionType {
  sun('images/sun.png'),
  cloudy('images/cloudy.png'),
  overcast('images/overcast.png'),
  rainy('images/rainy.png'),
  snow('images/snow.png');

  final String path;
  const ConditionType(this.path);
}