import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:uuid/v4.dart';

class Comment extends HiveObject {
  Comment({
    required this.name,
    required this.comment,
    required this.profileImagePath,
  }) {
    commentId = UuidV4();
  }

  late UuidV4 commentId;
  String name, comment, profileImagePath;
}
