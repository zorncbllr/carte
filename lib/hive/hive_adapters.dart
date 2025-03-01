import 'package:carte/models/product.dart';
import 'package:carte/models/order.dart';
import 'package:carte/models/comment.dart';
import 'package:carte/models/user.dart';
import 'package:hive_ce/hive.dart';
import 'package:uuid/data.dart';
import 'package:uuid/v4.dart';

part 'hive_adapters.g.dart';

@GenerateAdapters([
  AdapterSpec<User>(),
  AdapterSpec<Product>(),
  AdapterSpec<Order>(),
  AdapterSpec<Comment>(),
  AdapterSpec<UuidV4>(),
])
// Annotations must be on some element
// ignore: unused_element
void _() {}
