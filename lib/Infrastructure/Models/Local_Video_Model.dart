import 'package:toktik/Domain/Entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel(
      {required this.name,
      required this.videoUrl,
      this.likes = 0,
      this.views = 0});

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) {
    return LocalVideoModel(
        name: json['name'] ?? "No Name",
        videoUrl: json['videoUrl'],
        likes: json['likes'],
        views: json['views']);
  }

  VideoPost toVideoPostEntity() =>
      VideoPost(caption: name, videoUrl: videoUrl, likes: likes, views: views);
}
