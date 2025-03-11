class BannerModel {
  final String image;
  final String? title;
  final String? description;

  // Make Constructor
  BannerModel({required this.image, this.title, this.description});

  // Json Converter
  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return BannerModel(
      image: json['image'],
      title: json['title'],
      description: json['description'],
    );
  }
}
