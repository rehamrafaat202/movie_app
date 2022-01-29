class RecommenedModel {
  String? id;
  String? image;
  String? title;
  String? subTitle;
  RecommenedModel({this.id, this.image, this.subTitle, this.title});
}

List<RecommenedModel> recommended = [
  RecommenedModel(
      id: "m1",
      subTitle: "New Life",
      title: "Awake",
      image:
          "https://i.pinimg.com/236x/38/70/9c/38709cab6a894645aad58d3b00f1f4a4.jpg"),
  RecommenedModel(
      id: "m1",
      subTitle: "2018",
      title: "Beauty and the beast",
      image:
          "https://i.pinimg.com/236x/04/fa/e2/04fae2d6c58fe5f0c4b7deeff21473cc.jpg"),
  RecommenedModel(
      id: "m1",
      subTitle: "2017",
      title: "Gost Lab",
      image:
          "https://i.pinimg.com/236x/d1/87/60/d187609878cb00c1738b3ec77ab8fb05.jpg"),
  RecommenedModel(
      id: "m1",
      subTitle: "2022",
      title: "Lion king",
      image:
          "https://i.pinimg.com/236x/eb/ad/64/ebad6447d9ab0061191bc579de35d40b.jpg"),
];
