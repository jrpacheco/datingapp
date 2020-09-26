class PointsViewModel {
  final String Id;
  final String Latitude;
  final String Longitude;
  final bool Active;
  final String Created;
  final String Updated;

  PointsViewModel(this.Id, this.Latitude, this.Longitude, this.Active, this.Created, this.Updated);

  factory PointsViewModel.fromJson(Map<String, dynamic> json){
    return PointsViewModel(
        json['id'],
        json['latitude'],
        json['longitude'],
        json['active'],
        json['created'],
        json['updated']
    );
  }
}