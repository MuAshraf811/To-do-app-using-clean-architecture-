import 'package:clean_archticture/features/posts/domain/repo/posts_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';

class DeletePostsUserCase {
  final PostsRepository repo;
  DeletePostsUserCase(this.repo);

  Future<Either<Failure, Unit>> call(int postId) async {
    return repo.deletePost(postId);
  }
}
