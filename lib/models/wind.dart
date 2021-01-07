class Wind {
  final double speed;
  final int deg;

  Wind.fromJson(Map<String, dynamic> json):
  this.speed = (json['speed']).toDouble(),
  this.deg = json['deg'];

  Map<String, dynamic> toJson() => {
    'speed' : this.speed,
    'deg' : this.deg,
  };
}