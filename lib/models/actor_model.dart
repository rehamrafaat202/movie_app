class ActorModel {
  String? id;
  String? image;
  String? name;
  String? movieId;
  String? jobDescription;
  String? dateOfBirth;
  String? placeOfBirth;
  int? totalFilms;
  ActorModel(
      {this.id,
      this.image,
      this.name,
      this.dateOfBirth,
      this.jobDescription,
      this.placeOfBirth,
      this.totalFilms});
  // CastModel.fromJson(Map<String, dynamic> json) {
  //   id = json['id'];
  //   image = json['image'];
  //   name = json["name"];
  // }
}

List<ActorModel> actors = [
  ActorModel(
      id: "c1",
      name: "Robert Downey Je",
      jobDescription: "Actor ,Producer , Writer",
      dateOfBirth: "April 4,1965 (55)",
      placeOfBirth: "New Yourk ,USA",
      totalFilms: 243,
      image:
          "https://m.media-amazon.com/images/M/MV5BNzg1MTUyNDYxOF5BMl5BanBnXkFtZTgwNTQ4MTE2MjE@._V1_UX150_CR0,0,150,218_AL_.jpg"),
  ActorModel(
      id: "c1",
      name: "Chris Evan",
      jobDescription: "Actor ,Producer , Writer",
      dateOfBirth: "April 4,1965 (55)",
      placeOfBirth: "New Yourk ,USA",
      totalFilms: 200,
      image:
          "https://m.media-amazon.com/images/M/MV5BMTU2NTg1OTQzMF5BMl5BanBnXkFtZTcwNjIyMjkyMg@@._V1_UY218_CR2,0,150,218_AL_.jpg"),
  ActorModel(
      id: "c1",
      name: "Scarlett Johansson",
      jobDescription: "Actress ,Producer , Writer",
      dateOfBirth: "April 4,1965 (55)",
      placeOfBirth: "New Yourk ,USA",
      totalFilms: 23,
      image:
          "https://m.media-amazon.com/images/M/MV5BMTM3OTUwMDYwNl5BMl5BanBnXkFtZTcwNTUyNzc3Nw@@._V1_UY218_CR15,0,150,218_AL_.jpg"),
];
