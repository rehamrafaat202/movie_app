class MovieReviewModel {
  dynamic id;
  dynamic page;
  List<MovieReviewResults>? results;
  dynamic totalPages;
  dynamic totalResults;

  MovieReviewModel(
      {this.id, this.page, this.results, this.totalPages, this.totalResults});

  MovieReviewModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    page = json['page'];
    if (json['results'] != null) {
      results = <MovieReviewResults>[];
      json['results'].forEach((v) {
        results!.add(MovieReviewResults.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;

    data['total_pages'] = totalPages;
    data['total_results'] = totalResults;
    return data;
  }
}

class MovieReviewResults {
  dynamic author;
  AuthorDetails? authorDetails;
  dynamic content;
  dynamic createdAt;
  dynamic id;
  dynamic updatedAt;
  dynamic url;

  MovieReviewResults(
      {this.author,
      this.authorDetails,
      this.content,
      this.createdAt,
      this.id,
      this.updatedAt,
      this.url});

  MovieReviewResults.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    authorDetails = json['author_details'] != null
        ? new AuthorDetails.fromJson(json['author_details'])
        : null;
    content = json['content'];
    createdAt = json['created_at'];
    id = json['id'];
    updatedAt = json['updated_at'];
    url = json['url'];
  }
}

class AuthorDetails {
  dynamic name;
  dynamic username;
  dynamic avatarPath;
  dynamic rating;

  AuthorDetails({this.name, this.username, this.avatarPath, this.rating});

  AuthorDetails.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    username = json['username'];
    avatarPath = json['avatar_path'];
    rating = json['rating'];
  }
}
