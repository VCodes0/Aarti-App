class RecentlyPlayedAarti {
  String? id;
  String? title;
  String? withoutBgImage;
  String? bgImage;
  String? audio;
  String? mainImage;

  RecentlyPlayedAarti({
    this.id,
    this.title,
    this.withoutBgImage,
    this.bgImage,
    this.audio,
    this.mainImage,
  });

  RecentlyPlayedAarti.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    title = json["title"];
    withoutBgImage = json["without_bg_image"];
    bgImage = json["bg_image"];
    audio = json["audio"];
    mainImage = json["main_image"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["title"] = title;
    _data["without_bg_image"] = withoutBgImage;
    _data["bg_image"] = bgImage;
    _data["audio"] = audio;
    _data["main_image"] = mainImage;
    return _data;
  }
}
