class ActorPhotosModel {
  dynamic id;
  List<Profiles>? profiles;

  ActorPhotosModel({this.id, this.profiles});

  ActorPhotosModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['profiles'] != null) {
      profiles = <Profiles>[];
      json['profiles'].forEach((v) {
        profiles!.add(new Profiles.fromJson(v));
      });
    }
  }
}

class Profiles {
  dynamic aspectRatio;
  String? filePath;
  dynamic height;

  double? voteAverage;
  dynamic voteCount;
  dynamic width;

  Profiles(
      {this.aspectRatio,
      this.filePath,
      this.height,
      this.voteAverage,
      this.voteCount,
      this.width});

  Profiles.fromJson(Map<String, dynamic> json) {
    aspectRatio = json['aspect_ratio'];
    filePath = json['file_path'];
    height = json['height'];

    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
    width = json['width'];
  }
}
