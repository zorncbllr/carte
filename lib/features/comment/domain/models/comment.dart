import 'package:uuid/v4.dart';

class Comment {
  String name, comment, profileImagePath;
  UuidV4 commentId;

  Comment({
    required this.name,
    required this.comment,
    required this.profileImagePath,
  }) : commentId = UuidV4();
}
