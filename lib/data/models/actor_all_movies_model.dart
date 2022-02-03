class ActorAllMoviesModel {
  List<ActorAllMoviesCast>? cast;
  List<Crew>? crew;
  dynamic id;

  ActorAllMoviesModel({this.cast, this.crew, this.id});

  ActorAllMoviesModel.fromJson(Map<String, dynamic> json) {
    if (json['cast'] != null) {
      cast = <ActorAllMoviesCast>[];
      json['cast'].forEach((v) {
        cast!.add(ActorAllMoviesCast.fromJson(v));
      });
    }
    if (json['crew'] != null) {
      crew = <Crew>[];
      json['crew'].forEach((v) {
        crew!.add(Crew.fromJson(v));
      });
    }
    id = json['id'];
  }
}

class ActorAllMoviesCast {
  String? character;
  String? creditId;
  String? releaseDate;
  dynamic voteCount;
  bool? video;
  bool? adult;
  dynamic voteAverage;
  String? title;
  List<int>? genreIds;
  String? originalLanguage;
  String? originalTitle;
  double? popularity;
  dynamic id;
  String? backdropPath;
  String? overview;
  String? posterPath;

  ActorAllMoviesCast(
      {this.character,
      this.creditId,
      this.releaseDate,
      this.voteCount,
      this.video,
      this.adult,
      this.voteAverage,
      this.title,
      this.genreIds,
      this.originalLanguage,
      this.originalTitle,
      this.popularity,
      this.id,
      this.backdropPath,
      this.overview,
      this.posterPath});

  ActorAllMoviesCast.fromJson(Map<String, dynamic> json) {
    character = json['character'];
    creditId = json['credit_id'];
    releaseDate = json['release_date'];
    voteCount = json['vote_count'];
    video = json['video'];
    adult = json['adult'];
    voteAverage = json['vote_average'];
    title = json['title'];
    genreIds = json['genre_ids'].cast<int>();
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    popularity = json['popularity'];
    id = json['id'];
    backdropPath = json['backdrop_path'];
    overview = json['overview'];
    posterPath = json['poster_path'];
  }
}

class Crew {
  dynamic id;
  String? department;
  String? originalLanguage;
  String? originalTitle;
  String? job;
  String? overview;
  dynamic voteCount;
  bool? video;
  String? posterPath;
  String? backdropPath;
  String? title;
  double? popularity;
  List<int>? genreIds;
  double? voteAverage;
  bool? adult;
  String? releaseDate;
  String? creditId;

  Crew(
      {this.id,
      this.department,
      this.originalLanguage,
      this.originalTitle,
      this.job,
      this.overview,
      this.voteCount,
      this.video,
      this.posterPath,
      this.backdropPath,
      this.title,
      this.popularity,
      this.genreIds,
      this.voteAverage,
      this.adult,
      this.releaseDate,
      this.creditId});

  Crew.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    department = json['department'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    job = json['job'];
    overview = json['overview'];
    voteCount = json['vote_count'];
    video = json['video'];
    posterPath = json['poster_path'];
    backdropPath = json['backdrop_path'];
    title = json['title'];
    popularity = json['popularity'];
    genreIds = json['genre_ids'].cast<int>();
    voteAverage = json['vote_average'];
    adult = json['adult'];
    releaseDate = json['release_date'];
    creditId = json['credit_id'];
  }
}
