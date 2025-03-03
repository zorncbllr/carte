import 'package:carte/config/hive/hive_registrar.g.dart';
import 'package:carte/data/models/hive_comment.dart';
import 'package:carte/data/models/hive_order.dart';
import 'package:carte/data/models/hive_product.dart';
import 'package:carte/data/models/hive_user.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final appDocumentDirectory = await getApplicationDocumentsDirectory();

  await Hive.initFlutter(appDocumentDirectory.path);

  Hive.registerAdapters();

  await Hive.openBox<HiveUser>('userBox');
  await Hive.openBox<HiveProduct>('productBox');
  await Hive.openBox<HiveOrder>('orderBox');
  await Hive.openBox<HiveComment>('commentBox');

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}
