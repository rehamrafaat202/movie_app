class MoviePhotosModel {
  dynamic id;
  List<Backdrops>? backdrops;
  List<Posters>? posters;

  MoviePhotosModel({this.id, this.backdrops, this.posters});

  MoviePhotosModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['backdrops'] != null) {
      backdrops = <Backdrops>[];
      json['backdrops'].forEach((v) {
        backdrops!.add(Backdrops.fromJson(v));
      });
    }
    if (json['posters'] != null) {
      posters = <Posters>[];
      json['posters'].forEach((v) {
        posters!.add(Posters.fromJson(v));
      });
    }
  }
}

class Backdrops {
  dynamic aspectRatio;
  String? filePath;
  dynamic height;
  // Null? iso6391;
  dynamic voteAverage;
  dynamic voteCount;
  dynamic width;

  Backdrops(
      {this.aspectRatio,
      this.filePath,
      this.height,
      this.voteAverage,
      this.voteCount,
      this.width});

  Backdrops.fromJson(Map<String, dynamic> json) {
    aspectRatio = json['aspect_ratio'];
    filePath = json['file_path'];
    height = json['height'];

    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
    width = json['width'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aspect_ratio'] = this.aspectRatio;
    data['file_path'] = this.filePath;
    data['height'] = this.height;

    data['vote_average'] = this.voteAverage;
    data['vote_count'] = this.voteCount;
    data['width'] = this.width;
    return data;
  }
}

class Posters {
  dynamic aspectRatio;
  String? filePath;
  dynamic height;
  String? iso6391;
  dynamic voteAverage;
  dynamic voteCount;
  dynamic width;

  Posters(
      {this.aspectRatio,
      this.filePath,
      this.height,
      this.iso6391,
      this.voteAverage,
      this.voteCount,
      this.width});

  Posters.fromJson(Map<String, dynamic> json) {
    aspectRatio = json['aspect_ratio'];
    filePath = json['file_path'];
    height = json['height'];
    iso6391 = json['iso_639_1'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
    width = json['width'];
  }
}
