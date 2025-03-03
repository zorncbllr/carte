import 'package:carte/features/comment/data/models/hive_comment.dart';
import 'package:carte/features/comment/domain/models/comment.dart';
import 'package:carte/features/order/data/models/hive_order.dart';
import 'package:carte/features/product/data/models/hive_product.dart';
import 'package:carte/features/product/domain/models/product.dart';
import 'package:carte/features/user/data/models/hive_user.dart';
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
