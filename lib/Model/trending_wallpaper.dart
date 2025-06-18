class TrendingWallpaper {
  String? id;
  String? postImage;

  TrendingWallpaper({this.id, this.postImage});

  TrendingWallpaper.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    postImage = json["post_image"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["post_image"] = postImage;
    return _data;
  }
}
