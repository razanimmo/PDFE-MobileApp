class MediaModel {
  String? id;
  String? name;
  String? type;
  String? url;
  String? thumbnail;
  int? duration;
  String? localPath;

  MediaModel({
    this.name,
    this.id,
    this.type,
    this.url,
    this.thumbnail,
    this.duration,
    this.localPath,
  });

  static MediaModel fromJSON(Map<String, dynamic> json) {
    var media = new MediaModel(
        name: json["name"] ?? "",
        id: json["id"] ?? "",
        type: json["type"] ?? "",
        url: json["url"] ?? "",
        localPath: json['localPath'] ?? "",
        duration: json["duration"] ?? 0,
        thumbnail: json["thumbnail"] ?? "");

    return media;
  }

  Map<String, dynamic> toJSON(MediaModel media) {
    Map<String, dynamic> mediaJSON = {};
    mediaJSON["name"] = media.name;
    mediaJSON['id'] = media.id;
    mediaJSON["type"] = media.type;
    mediaJSON["url"] = media.url;
    mediaJSON["thumbnail"] = media.thumbnail;
    mediaJSON["duration"] = media.duration;
    mediaJSON["localPath"] = media.localPath;

    return mediaJSON;
  }
}
