class ActorSuccessMoviesModel {
  String? id;
  String? image;
  String? title;
  String? subTitle;
  String? actorId;
  ActorSuccessMoviesModel({this.id, this.image, this.subTitle, this.title});
}

List<ActorSuccessMoviesModel> successMovies = [
  ActorSuccessMoviesModel(
      id: "m1",
      subTitle: "2005",
      title: "Sherlok holmes",
      image:
          "https://i.pinimg.com/236x/81/ca/cf/81cacf597dd5d982d079191d71b20d7c.jpg"),
  ActorSuccessMoviesModel(
      id: "m1",
      subTitle: "2018",
      title: "Iron Man ",
      image:
          "https://i.pinimg.com/236x/d4/d6/ff/d4d6ff8fede27405a57f83b7a9c34fd3.jpg"),
  ActorSuccessMoviesModel(
      id: "m1",
      subTitle: "2017",
      title: "Civil war",
      image:
          "https://i.pinimg.com/236x/cf/b6/28/cfb62807d85442f75bef531e1ed19515.jpg"),
  ActorSuccessMoviesModel(
      id: "m1",
      subTitle: "2022",
      title: "Avengers: infinity War",
      image:
          "https://i.pinimg.com/736x/ea/c9/e4/eac9e415993a0c4eb84135e9e3f2e386.jpg"),
];
