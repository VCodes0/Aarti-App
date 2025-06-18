class RecentlyPlayedWallpaper {
  String? id;
  String? postImage;

  RecentlyPlayedWallpaper({this.id, this.postImage});

  RecentlyPlayedWallpaper.fromJson(Map<String, dynamic> json) {
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
