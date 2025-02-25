import 'package:carte/hive/hive_registrar.g.dart';
import 'package:carte/pages/home_page.dart';
import 'package:carte/pages/login_page.dart';
import 'package:carte/pages/order_page.dart';
import 'package:carte/stores/user_store.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  final appDocumentDirectory = await getApplicationDocumentsDirectory();

  await Hive.initFlutter(appDocumentDirectory.path);

  Hive.registerAdapters();

  runApp(ChangeNotifierProvider(
    create: (context) => UserStore(),
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
      theme: ThemeData(
        dividerTheme: DividerThemeData(
          color: const Color.fromARGB(255, 128, 128, 128),
          thickness: 0.1,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 14, 14, 14),
          foregroundColor: const Color.fromARGB(255, 128, 128, 128),
        ),
        cardColor: const Color.fromARGB(255, 36, 36, 36),
        hintColor: const Color.fromARGB(255, 128, 128, 128),
        primaryColor: const Color.fromARGB(255, 4, 133, 71),
        scaffoldBackgroundColor: const Color.fromARGB(255, 14, 14, 14),
      ),
      routes: {
        '/home': (context) => HomePage(),
        '/orders': (context) => OrderPage(),
      },
    );
  }
}
