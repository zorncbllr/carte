import 'package:carte/config/routes_config.dart';
import 'package:carte/config/theme_config.dart';
import 'package:carte/controllers/auth_controller.dart';
import 'package:carte/hive/hive_registrar.g.dart';
import 'package:carte/models/user.dart';
import 'package:carte/views/login_page.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:uuid/v4.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  final appDocumentDirectory = await getApplicationDocumentsDirectory();

  await Hive.initFlutter(appDocumentDirectory.path);

  Hive.registerAdapters();

  await Hive.openBox<User>('userBox');
  await Hive.openBox<UuidV4>('authBox');

  runApp(ChangeNotifierProvider(
    create: (context) => AuthController(),
    child: const Main(),
  ));
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: themeData,
      routes: routes,
    );
  }
}
