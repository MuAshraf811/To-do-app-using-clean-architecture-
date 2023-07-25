import 'package:clean_archticture/features/posts/domain/repo/posts_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entity/post.dart';

class UpdatePostsUseCase {
  final PostsRepository repo;
  UpdatePostsUseCase(this.repo);

  Future<Either<Failure, Unit>> call(Post post) {
    return repo.updatePost(post);
  }
}
