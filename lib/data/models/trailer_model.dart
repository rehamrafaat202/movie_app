class TrailerModel {
  String? id;
  String? image;
  TrailerModel({this.id, this.image});
  TrailerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
  }
}

List<TrailerModel> trailers = [
  TrailerModel(
      id: "t1",
      image:
          "https://static.wikia.nocookie.net/04723028-992b-44f3-b5a8-363006cace98/scale-to-width-down/800"),
  TrailerModel(
      id: "t2",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJoVNx5rlxweeMiSGaAe2rr_Az0m41zxkot3D0cnwNIgv1CDpQMycWRTcaewA4g9SM7FE&usqp=CAU"),
  TrailerModel(
      id: "t3",
      image:
          "https://an-master.net/wp-content/uploads/2021/03/Resident-Evil-Infinite-Darkness-anime-2021-netflix-cover.jpg"),
];
