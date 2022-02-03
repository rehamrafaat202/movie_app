class ComingSoon2Model {
  dynamic page;
  List<ComingResults>? results;
  Dates? dates;
  dynamic totalPages;
  dynamic totalResults;

  ComingSoon2Model(
      {this.page,
      this.results,
      this.dates,
      this.totalPages,
      this.totalResults});

  ComingSoon2Model.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    if (json['results'] != null) {
      results = <ComingResults>[];
      json['results'].forEach((v) {
        results!.add(ComingResults.fromJson(v));
      });
    }
    dates = json['dates'] != null ? Dates.fromJson(json['dates']) : null;
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['page'] = page;

    data['total_pages'] = totalPages;
    data['total_results'] = totalResults;
    return data;
  }
}

class ComingResults {
  String? posterPath;
  bool? adult;
  String? overview;
  String? releaseDate;
  List<int>? genreIds;
  dynamic id;
  String? originalTitle;
  String? originalLanguage;
  String? title;
  String? backdropPath;
  dynamic popularity;
  dynamic voteCount;
  bool? video;
  dynamic voteAverage;

  ComingResults(
      {this.posterPath,
      this.adult,
      this.overview,
      this.releaseDate,
      this.genreIds,
      this.id,
      this.originalTitle,
      this.originalLanguage,
      this.title,
      this.backdropPath,
      this.popularity,
      this.voteCount,
      this.video,
      this.voteAverage});

  ComingResults.fromJson(Map<String, dynamic> json) {
    posterPath = json['poster_path'];
    adult = json['adult'];
    overview = json['overview'];
    releaseDate = json['release_date'];
    genreIds = json['genre_ids'].cast<int>();
    id = json['id'];
    originalTitle = json['original_title'];
    originalLanguage = json['original_language'];
    title = json['title'];
    backdropPath = json['backdrop_path'];
    popularity = json['popularity'];
    voteCount = json['vote_count'];
    video = json['video'];
    voteAverage = json['vote_average'];
  }
}

class Dates {
  String? maximum;
  String? minimum;

  Dates({this.maximum, this.minimum});

  Dates.fromJson(Map<String, dynamic> json) {
    maximum = json['maximum'];
    minimum = json['minimum'];
  }
}
