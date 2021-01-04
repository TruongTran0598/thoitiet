class Wind {
  final int speed;
  final int deg;

  Wind.fromJson(Map<String, dynamic> json):
  this.speed = json['speed'],
  this.deg = json['deg'];

  Map<String, dynamic> toJson() => {
    'speed' : this.speed,
    'deg' : this.deg,
  };
}