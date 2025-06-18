class AllGodWallpaperPostList {
  String? id;
  String? images;

  AllGodWallpaperPostList({this.id, this.images});

  AllGodWallpaperPostList.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    images = json["images"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["images"] = images;
    return _data;
  }
}
