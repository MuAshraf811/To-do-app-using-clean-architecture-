import 'package:clean_archticture/features/posts/data/model/post_model.dart';
import 'package:dartz/dartz.dart';

abstract class PostLocalDataSource {
  Future<List<PostModel>> getCachedPosts();
  Future<Unit> cachePosts(List<PostModel> model);
}

class PostLocalDataSourceWithSharedPref implements PostLocalDataSource {
  @override
  Future<Unit> cachePosts(List<PostModel> model) {
    throw UnimplementedError();
  }

  @override
  Future<List<PostModel>> getCachedPosts() {
    throw UnimplementedError();
  }
}
