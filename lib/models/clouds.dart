class Clouds {
  final int all;

  Clouds.fromJson(Map<String, dynamic> json):
  this.all = json['all'];

  Map<String, dynamic> toJson() => {
    'all' : this.all,
  };
}