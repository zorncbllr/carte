import 'package:carte/data/models/hive_comment.dart';
import 'package:carte/domain/models/comment.dart';
import 'package:carte/domain/repository/comment_repository.dart';
import 'package:hive_ce_flutter/adapters.dart';

class HiveCommentRepository implements CommentRepository {
  final Box<HiveComment> _commentBox = Hive.box<HiveComment>('commentBox');

  @override
  Future<void> addComment(Comment newComment) async {
    HiveComment comment = HiveComment.toHiveObject(newComment);

    await _commentBox.put(comment.commentId, comment);
  }

  @override
  Future<void> deleteComment(Comment comment) async {
    await _commentBox.delete(comment.commentId);
  }

  @override
  Future<List<Comment>> getComments() async {
    return _commentBox.values.toList();
  }

  @override
  Future<void> updateComment(Comment comment) async {
    HiveComment updatedComment = HiveComment.toHiveObject(comment);

    await _commentBox.put(updatedComment.commentId, updatedComment);
  }
}
