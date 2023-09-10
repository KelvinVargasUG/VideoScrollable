import 'package:toktik/Domain/DataSource/video_posts_datasource.dart';
import 'package:toktik/Domain/Entities/video_post.dart';
import 'package:toktik/Domain/Repositories/video_posts_repository.dart';

class VideoPostRepositoryImpl implements VideoPostRepository {
  final VideoPostDatasource videoPostDatasource;

  VideoPostRepositoryImpl({required this.videoPostDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videoPostDatasource.getTrendingVideosByPage(page);
  }
}
