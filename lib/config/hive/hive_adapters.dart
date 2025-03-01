import 'package:carte/data/models/hive_comment.dart';
import 'package:carte/data/models/hive_order.dart';
import 'package:carte/data/models/hive_product.dart';
import 'package:carte/data/models/hive_user.dart';
import 'package:carte/domain/models/comment.dart';
import 'package:carte/domain/models/product.dart';
import 'package:hive_ce/hive.dart';
import 'package:uuid/data.dart';

import 'package:uuid/v4.dart';

part 'hive_adapters.g.dart';

@GenerateAdapters([
  AdapterSpec<HiveUser>(),
  AdapterSpec<HiveProduct>(),
  AdapterSpec<HiveOrder>(),
  AdapterSpec<HiveComment>(),
  AdapterSpec<UuidV4>(),
])
// Annotations must be on some element
// ignore: unused_element
void _() {}
