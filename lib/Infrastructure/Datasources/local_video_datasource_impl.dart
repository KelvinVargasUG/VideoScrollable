import 'package:toktik/Domain/DataSource/video_posts_datasource.dart';
import 'package:toktik/Domain/Entities/video_post.dart';
import 'package:toktik/Infrastructure/Models/Local_Video_Model.dart';
import 'package:toktik/Shared/Data/local_video_posts.dart';

class LocalVideoDatasourceImpl implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos = videoPosts
        .map((e) => LocalVideoModel.fromJson(e).toVideoPostEntity())
        .toList();

    return newVideos;
  }
}
