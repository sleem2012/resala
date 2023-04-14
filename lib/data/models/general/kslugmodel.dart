class KSlugModel {
  final String translated;
  final String slug;

  KSlugModel({required this.translated, required this.slug});

  ///Find Model By Slug
  static KSlugModel? of(String? slug) {
    switch (slug) {
      case money:
        return KSlugModel(translated: "عيني", slug: money);
      case material:
        return KSlugModel(translated: "نقدي", slug: material);
      case recycle:
        return KSlugModel(translated: "ريسايكل", slug:recycle );


      default:
        return null;
    }
  }

  ///Lists of Slugs & Trans

  static List<KSlugModel> get achievmentType => [
    KSlugModel(translated: "عيني", slug: material),
    KSlugModel(translated: "نقدي", slug: money),
    KSlugModel(translated: "ريسايكل", slug:recycle ),
  ];



  static const String money = "money";
  static const String material = "material";
  static const String recycle = "recycle";

  //Equality
  @override
  String toString() => slug;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is KSlugModel && other.translated == translated && other.slug == slug;
  }

  @override
  int get hashCode => translated.hashCode ^ slug.hashCode;
}
