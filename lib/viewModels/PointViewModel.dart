class PointViewModel {
  final String Id;
  final String Latitude;
  final String Longitude;
  final String Distance;

  PointViewModel(this.Id, this.Latitude, this.Longitude, this.Distance);

  factory PointViewModel.fromJson(Map<String, dynamic> json){
    return PointViewModel(
        json['Id'],
        json['Latitude'],
        json['Longitude'],
        json['Distance']
    );
  }
}