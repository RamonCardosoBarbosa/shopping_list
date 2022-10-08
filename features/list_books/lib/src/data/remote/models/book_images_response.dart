class BookImagesResponse {
  const BookImagesResponse({
    this.smallThumbnail,
    this.thumbnail,
  });

  final String? smallThumbnail;
  final String? thumbnail;

  factory BookImagesResponse.fromJson(Map<String, dynamic> json) =>
      BookImagesResponse(
        smallThumbnail: json['smallThumbnail'],
        thumbnail: json['thumbnail'],
      );
}
