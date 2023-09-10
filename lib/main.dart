import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/Config/Theme/app_theme.dart';
import 'package:toktik/Infrastructure/Datasources/local_video_datasource_impl.dart';
import 'package:toktik/Infrastructure/Repositories/video_posts_repository_impl.dart';
import 'package:toktik/Presentation/Providers/Discover_provider.dart';
import 'package:toktik/Presentation/Screens/Discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostRepository = VideoPostRepositoryImpl(
      videoPostDatasource: LocalVideoDatasourceImpl(),
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => DiscoverProvider(videoPostRepository: videoPostRepository)..loadNextPage(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        title: 'Material App',
        home: const DiscoverScreen(),
      ),
    );
  }
}
