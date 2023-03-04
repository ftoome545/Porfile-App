import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../screens/project_screen.dart';
import '../screens/profile_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/app_drawer.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: ProfileScreen(),

      initialRoute: '/',
      routes: {
        '/': (context) => ProfileScreen(),
        ProjectScreen.screenRoute: (context) => ProjectScreen(),
      },
    );
  }
}
