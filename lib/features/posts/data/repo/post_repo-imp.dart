import 'package:clean_archticture/core/errors/exception.dart';
import 'package:clean_archticture/core/errors/failure.dart';
import 'package:clean_archticture/core/network/networkInfo.dart';
import 'package:clean_archticture/features/posts/data/data_sources/post_local.dart';
import 'package:clean_archticture/features/posts/data/data_sources/post_remote.dart';
import 'package:clean_archticture/features/posts/domain/entity/post.dart';
import 'package:clean_archticture/features/posts/domain/repo/posts_repo.dart';
import 'package:dartz/dartz.dart';

class PostRepoSitoryImp implements PostsRepository {
  final PostRemoteDataSource remoteData;
  final PostLocalDataSource localData;
  final NetworkInfo info;
  PostRepoSitoryImp({required this.remoteData,required this.localData , required this.info});

  @override
  Future<Either<Failure, Unit>> addPost(Post post) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> deletePost(int id) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Post>>> getAllPosts() async {
    if (await info.isConnected) {
      try {
        final remote = await remoteData.getAllPosts();
        localData.cachePosts(remote);
        return right(remote);
      } on ServerExceptoin {
        return left(ServerFailure());
      }
    } else {
      try {
        final local = await localData.getCachedPosts();
        return right(local);
      } on EmptyLocalDataExceptoin {
        return left(EmptyLocalDataFailure());
      }
    }
  }

  @override
  Future<Either<Failure, Unit>> updatePost(Post post) {
    throw UnimplementedError();
  }
}
