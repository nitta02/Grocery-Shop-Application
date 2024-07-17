import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_shop_app/controller/provider/productProvider.dart';
import 'package:grocery_shop_app/controller/provider/wishListProivder.dart';
import 'package:grocery_shop_app/mainScreen.dart';
import 'package:grocery_shop_app/routes/appRoutes.dart';
import 'package:grocery_shop_app/view/screens/auth/signIn.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => WishlistProvider(),
        ),
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              appBarTheme: const AppBarTheme(
                systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: Colors.transparent,
                ),
              ),
              bottomAppBarTheme: const BottomAppBarTheme(
                color: Colors.transparent,
              )),
          home: const SignInScreen(),
          routes: AppRoutes.routes,
        ),
      ),
    );
  }
}
