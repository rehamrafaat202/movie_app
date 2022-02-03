class BannerModel {
  String? id;
  String? image;
  BannerModel({this.id, this.image});
  BannerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
  }
}

List<BannerModel> banners = [
  BannerModel(
      id: "b1",
      image:
          "https://www.echoroukonline.com/wp-content/uploads/2021/03/%D9%86%D8%AA%D9%81%D9%84%D9%83%D8%B3.jpg"),
  BannerModel(
      id: "b1", image: "https://i.ytimg.com/vi/ibxKEqxARkE/maxresdefault.jpg"),
  BannerModel(
      id: "b1",
      image:
          "https://an-master.net/wp-content/uploads/2021/03/Resident-Evil-Infinite-Darkness-anime-2021-netflix-cover.jpg"),
];
