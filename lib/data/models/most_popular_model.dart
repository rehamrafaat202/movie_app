class MostPopularModel {
  String? id;
  String? image;
  String? title;
  String? cover;
  String? time;
  List<String>? category;
  String? producer;
  String? date;
  String? director;
  String? composer;
  String? boxOffice;
  double? rete;
  String? paragraph;
  MostPopularModel(
      {this.id,
      this.image,
      this.rete,
      this.paragraph,
      this.title,
      this.cover,
      this.boxOffice,
      this.composer,
      this.date,
      this.director,
      this.producer,
      this.time,
      this.category});
}

List<MostPopularModel> popular = [
  MostPopularModel(
      id: "m1",
      rete: 9.8,
      date: "Aprril 27,2018",
      director: "Antonuy Russo, Joe",
      producer: "Kevin Feg",
      composer: "Alan silvator",
      boxOffice: "2.049 bilion",
      title: "Avengers: infinity War".toUpperCase(),
      paragraph:
          "The Avengers is the first major crossover in the Marvel Cinematic Universe and the first to be released by Walt Disney Pictures; the previous films were released by Paramount Pictures (apart from The Incredible Hulk which was distributed by Universal Studios) and as part of the deal of transferring the distribution rights from Paramount to Disney, the Paramount logo appears on the film, its promotion and its merchandise, as well as Paramount earning 8% of the films income. The Walt Disney Company is credited at the end of the film, however.",
      cover:
          "https://i.pinimg.com/originals/6e/6a/e2/6e6ae2b2367c74e2bd0be2f014cdf9f1.jpg",
      time: "2 h 29min",
      category: ["Fiction", "Action", "Adventure", "Adventure", "Adventure"],
      image:
          "https://i.pinimg.com/736x/ea/c9/e4/eac9e415993a0c4eb84135e9e3f2e386.jpg"),
  MostPopularModel(
      id: "m1",
      rete: 9.8,
      date: "Aprril 27,2018",
      director: "Antonuy Russo, Joe",
      producer: "Kevin Feg",
      composer: "Alan silvator",
      boxOffice: "2.049 bilion",
      title: "Stay Close",
      cover:
          "https://i.pinimg.com/564x/07/82/e4/0782e4e0f1b485abf69481c43b8ea08f.jpg",
      time: "2 h 29min",
      category: [
        "Fiction",
        "Action",
      ],
      paragraph:
          "The Avengers is the first major crossover in the Marvel Cinematic Universe and the first to be released by Walt Disney Pictures; the previous films were released by Paramount Pictures (apart from The Incredible Hulk which was distributed by Universal Studios) and as part of the deal of transferring the distribution rights from Paramount to Disney, the Paramount logo appears on the film, its promotion and its merchandise, as well as Paramount earning 8% of the films income. The Walt Disney Company is credited at the end of the film, however.",
      image:
          "https://i.pinimg.com/236x/8f/5b/83/8f5b8358e5cfd6e3a12dd1bca41f8985.jpg"),
  MostPopularModel(
      id: "m1",
      rete: 7.8,
      title: "Hellobound",
      date: "Aprril 27,2020",
      director: "Antonuy Russo, Joe",
      producer: "Kevin Feg",
      composer: "Alan silvator",
      boxOffice: "2.049 bilion",
      cover:
          "https://i.pinimg.com/236x/9c/1f/9f/9c1f9fb06a15787fc2c894c45139c3a5.jpg",
      time: "2 h 29min",
      category: ["Fiction", "Action", "Romantic"],
      paragraph:
          "The Avengers is the first major crossover in the Marvel Cinematic Universe and the first to be released by Walt Disney Pictures; the previous films were released by Paramount Pictures (apart from The Incredible Hulk which was distributed by Universal Studios) and as part of the deal of transferring the distribution rights from Paramount to Disney, the Paramount logo appears on the film, its promotion and its merchandise, as well as Paramount earning 8% of the films income. The Walt Disney Company is credited at the end of the film, however.",
      image:
          "https://i.pinimg.com/236x/6c/f7/2b/6cf72ba936d036421738f54fdcf5c1cc.jpg"),
  MostPopularModel(
      id: "m1",
      rete: 8.8,
      title: "Don't Listen",
      director: "Antonuy Russo, Joe",
      producer: "Kevin Feg",
      composer: "Alan silvator",
      boxOffice: "2.049 bilion",
      date: "Aprril 27,2020",
      cover:
          "https://i.pinimg.com/564x/ae/b0/02/aeb0020fb676e675bfb53d10bd82de21.jpg",
      time: "2 h 29min",
      category: ["Fiction", "Action", "Romantic"],
      image:
          "https://i.pinimg.com/236x/ce/25/cc/ce25cc67e2f66dfd3553d8bc4694cdfa.jpg",
      paragraph:
          "The Avengers is the first major crossover in the Marvel Cinematic Universe and the first to be released by Walt Disney Pictures; the previous films were released by Paramount Pictures (apart from The Incredible Hulk which was distributed by Universal Studios) and as part of the deal of transferring the distribution rights from Paramount to Disney, the Paramount logo appears on the film, its promotion and its merchandise, as well as Paramount earning 8% of the films income. The Walt Disney Company is credited at the end of the film, however."),
];
