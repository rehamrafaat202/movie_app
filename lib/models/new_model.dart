class NewModel {
  String? id;
  String? image;
  String? title;
  String? subTitle;
  NewModel({this.id, this.image, this.subTitle, this.title});
}

List<NewModel> news = [
  NewModel(
      id: "m1",
      subTitle: "New Life",
      title: "The Chair",
      image:
          "https://i.pinimg.com/236x/7a/49/48/7a49482aaa8fe29cf11d3901fee5bca3.jpg"),
  NewModel(
      id: "m1",
      subTitle: "New Life",
      title: "The Witcher",
      image:
          "https://i.pinimg.com/236x/10/ea/8a/10ea8a82b21489384aa39904254bda30.jpg"),
  NewModel(
      id: "m1",
      subTitle: "New Life",
      title: "Skater Girl",
      image:
          "https://i.pinimg.com/236x/82/f2/77/82f277803353ab2d08a4160634ed0ea5.jpg"),
  NewModel(
      id: "m1",
      subTitle: "New Life",
      title: "super heros",
      image:
          "https://i.pinimg.com/236x/05/4a/e7/054ae71a271a9020f58737a2dc818db6.jpg"),
];
