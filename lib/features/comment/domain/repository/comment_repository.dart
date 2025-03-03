import 'package:carte/features/comment/domain/models/comment.dart';

abstract class CommentRepository {
  Future<void> addComment(Comment newComment);

  Future<void> updateComment(Comment comment);

  Future<void> deleteComment(Comment comment);

  Future<List<Comment>> getComments();
}
