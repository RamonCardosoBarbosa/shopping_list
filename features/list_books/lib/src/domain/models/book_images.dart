import 'package:equatable/equatable.dart';

class BookImages extends Equatable {
  const BookImages({
    this.smallThumbnail,
    this.thumbnail,
  });

  final String? smallThumbnail;
  final String? thumbnail;

  @override
  List<Object?> get props => [smallThumbnail, thumbnail];
}
