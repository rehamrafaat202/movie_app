class ActorAllMovies {
  String? id;
  String? image;
  String? title;
  String? name;
  String? date;
  String? actorId;
  String? category;

  double? rete;

  ActorAllMovies(
      {this.id,
      this.image,
      this.rete,
      this.title,
      this.name,
      this.date,
      this.category});
}

List<ActorAllMovies> actorMovies = [
  ActorAllMovies(
      id: "m1",
      rete: 9.8,
      name: "Dr John",
      title: "Dolittle",
      date: "2022,USA",
      category: "Fiction,Action,Adventure ",
      image:
          "https://i.pinimg.com/736x/59/af/1c/59af1cd13e6da9cc906bbaba03d48a5c.jpg"),
  ActorAllMovies(
      id: "m1",
      rete: 9.8,
      title: "Stay Close",
      name: "Dr John",
      date: "2022,USA",
      category: "Fiction,Action,Adventure ",
      image:
          "https://i.pinimg.com/236x/66/e2/bd/66e2bdaf90654f180ca8a53e2f0de45f.jpg"),
  ActorAllMovies(
      id: "m1",
      rete: 7.8,
      title: "Iron Man",
      name: "Dr John",
      date: "2022,USA",
      category: "Fiction,Action,Adventure ",
      image:
          "https://i.pinimg.com/236x/a8/85/93/a88593469de544010dedd479f600016c.jpg"),
  ActorAllMovies(
    id: "m1",
    rete: 8.8,
    title: "Tropic thunder",
    name: "Dr John",
    date: "2022,USA",
    category: "Fiction,Action, ",
    image:
        "https://i.pinimg.com/236x/5a/fb/cc/5afbcca8b72d0dbee2ffabccec20377c.jpg",
  ),
];
