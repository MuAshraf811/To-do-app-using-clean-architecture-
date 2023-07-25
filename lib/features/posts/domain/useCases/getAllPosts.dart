import 'package:clean_archticture/features/posts/domain/repo/posts_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entity/post.dart';

class GetAllPostsUseCase {
  final PostsRepository repo;
  GetAllPostsUseCase(this.repo);

  Future<Either<Failure, List<Post>>> call() async {
    return repo.getAllPosts();
  }
}
