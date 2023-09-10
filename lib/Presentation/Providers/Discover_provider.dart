import 'package:flutter/material.dart';
import 'package:toktik/Domain/Entities/video_post.dart';
import 'package:toktik/Domain/Repositories/video_posts_repository.dart';


class DiscoverProvider extends ChangeNotifier {
  final VideoPostRepository videoPostRepository;

  bool initialLoading = true;
  final List<VideoPost> video = [];

  DiscoverProvider({required this.videoPostRepository});

  Future<void> loadNextPage() async {
    // await Future.delayed(const Duration(seconds: 2));

    // final List<VideoPost> newVideos = videoPosts
    //     .map((e) => LocalVideoModel.fromJson(e).toVideoPostEntity())
    //     .toList();
    final newVideos = await videoPostRepository.getTrendingVideosByPage(1);
    video.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
