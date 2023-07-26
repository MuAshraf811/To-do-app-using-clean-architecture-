import 'package:clean_archticture/features/posts/data/model/post_model.dart';
import 'package:dartz/dartz.dart';

abstract class PostRemoteDataSource {
  Future<List<PostModel>> getAllPosts();
  Future<Unit> deletePost(int postId);
  Future<Unit> updatePost(PostModel post);
  Future<Unit> addPost(PostModel post);
}

class PostRemoteDataSourceWithHttp implements PostRemoteDataSource {
  @override
  Future<Unit> addPost(PostModel post) {
    throw UnimplementedError();
  }

  @override
  Future<Unit> deletePost(int postId) {
    throw UnimplementedError();
  }

  @override
  Future<List<PostModel>> getAllPosts() {
    throw UnimplementedError();
  }

  @override
  Future<Unit> updatePost(PostModel post) {
    throw UnimplementedError();
  }
}
