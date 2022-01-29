class ActorPhotosModel {
  String? id;
  String? image;
  String? actorId;
  ActorPhotosModel({this.id, this.image});
  ActorPhotosModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
  }
}

List<ActorPhotosModel> actorPhotos = [
  ActorPhotosModel(
      id: "t1",
      image:
          "https://m.media-amazon.com/images/M/MV5BNjVlZmY1OWItYTI4ZS00YzNkLWFiMzMtNmQwNGE1YTdmYzRmXkEyXkFqcGdeQW1pYnJ5YW50._V1_UX477_CR0,0,477,268_AL_.jpg"),
  ActorPhotosModel(
      id: "t2",
      image: "https://img.ecartelera.com/noticias/fotos/66700/66790/1.jpg"),
  ActorPhotosModel(
      id: "t3",
      image:
          "https://i.guim.co.uk/img/static/sys-images/Guardian/About/General/2013/7/17/1374072851358/Robert-Downey-Jr-010.jpg?width=1200&height=630&quality=85&auto=format&fit=crop&overlay-align=bottom%2Cleft&overlay-width=100p&overlay-base64=L2ltZy9zdGF0aWMvb3ZlcmxheXMvdGctZGVmYXVsdC5wbmc&s=fefd79555968c8a26f66c420959de1b1"),
  ActorPhotosModel(
      id: "t3",
      image:
          "https://variety.com/wp-content/uploads/2019/11/chris-evans-feat-image.jpg?w=1000"),
  ActorPhotosModel(
      id: "t4",
      image:
          "https://thecurrent-online.com/wp-content/uploads/2021/12/Dont-Look-Up-Chris-Evans-Cameo-What-Is-Known-1280x720.jpg"),
];
