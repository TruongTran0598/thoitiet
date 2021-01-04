class Coord {
  final double lon;
  final double lat;

  Coord.fromJson(Map<String, dynamic> json):
  this.lon = json['lon'],
  this.lat = json['lat'];

  Map<String, dynamic> toJson() => {
    'lon' : this.lon,
    'lat' : this.lat
  };
}