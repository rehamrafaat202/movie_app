class MoviesPicturesModel {
  String? id;
  String? image;
  String? movieId;
  MoviesPicturesModel({this.id, this.image});
  MoviesPicturesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
  }
}

List<MoviesPicturesModel> moviesPictures = [
  MoviesPicturesModel(
      id: "t1",
      image:
          "https://lumiere-a.akamaihd.net/v1/images/eu_avr-3_phase-1_breaker_r_fff7e9f9.jpeg?region=0,0,1920,732"),
  MoviesPicturesModel(
      id: "t2",
      image:
          "https://www.pluggedin.com/wp-content/uploads/2019/12/the-avengers-review-image-1200x688.jpg"),
  MoviesPicturesModel(
      id: "t3",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT14IXAtrg87QavB3zDgNsWO272aWN2xl3FitL2e3_ZcF8kAsW8kzRDnlyItertxtIkt20&usqp=CAU"),
];
