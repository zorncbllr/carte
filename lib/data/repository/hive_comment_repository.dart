import 'package:carte/domain/models/comment.dart';
import 'package:carte/domain/repository/comment_repository.dart';

class HiveCommentRepository implements CommentRepository {
  @override
  Future<void> addComment(Comment newComment) {
    // TODO: implement addComment
    throw UnimplementedError();
  }

  @override
  Future<void> deleteComment(Comment comment) {
    // TODO: implement deleteComment
    throw UnimplementedError();
  }

  @override
  Future<List<Comment>> getComments() {
    // TODO: implement getComments
    throw UnimplementedError();
  }

  @override
  Future<void> updateComment(Comment comment) {
    // TODO: implement updateComment
    throw UnimplementedError();
  }
}
