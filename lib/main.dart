import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_shop_app/mainScreen.dart';
import 'package:grocery_shop_app/routes/appRoutes.dart';

// This will always work for lock screen Orientation.
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
            ),
          ),
          bottomAppBarTheme: BottomAppBarTheme(
            color: Colors.transparent,
          )),
      home: const MainScreen(),
      routes: AppRoutes.routes,
    );
  }
}
