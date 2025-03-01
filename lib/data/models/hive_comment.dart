import 'package:carte/domain/models/comment.dart';
import 'package:hive_ce/hive.dart';

class HiveComment extends Comment with HiveObjectMixin {
  HiveComment({
    required super.name,
    required super.comment,
    required super.profileImagePath,
  });
}
