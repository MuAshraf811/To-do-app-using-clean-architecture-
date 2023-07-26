import 'package:clean_archticture/features/posts/domain/entity/post.dart';

class PostModel extends Post {
  const PostModel(
      {required int id,
      required int userId,
      required String title,
      required String body})
      : super(id: id, body: body, title: title, userId: userId);

  factory PostModel.fromJson(Map<String, dynamic> res) {
    return PostModel(
        id: res['id'],
        userId: res['userId'],
        title: res['title'],
        body: res['body']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id' : id,
      'userId' : userId, 
      'body' : body, 
      'title' : title
    };
  }
}
