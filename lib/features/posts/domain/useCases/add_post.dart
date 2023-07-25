import 'package:clean_archticture/features/posts/domain/repo/posts_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entity/post.dart';

class AddPostUsecase {
  final PostsRepository repo;
  AddPostUsecase(this.repo);

  Future<Either<Failure, Unit>> call(Post post) async {
    return repo.addPost(post);
  }
}
