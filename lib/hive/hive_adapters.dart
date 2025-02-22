import 'package:carte/models/product.dart';
import 'package:carte/models/order.dart';
import 'package:carte/models/comment.dart';
import 'package:carte/models/user.dart';
import 'package:hive_ce/hive.dart';

part 'hive_adapters.g.dart';

@GenerateAdapters([AdapterSpec<User>(), AdapterSpec<Product>()])
// Annotations must be on some element
// ignore: unused_element
void _() {}
