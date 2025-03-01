import 'package:carte/config/hive/hive_registrar.g.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final appDocumentDirectory = await getApplicationDocumentsDirectory();

  await Hive.initFlutter(appDocumentDirectory.path);

  Hive.registerAdapters();

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
