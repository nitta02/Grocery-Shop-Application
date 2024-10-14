import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_shop_app/core/provider/productProvider.dart';
import 'package:grocery_shop_app/core/provider/screenProvider.dart';
import 'package:grocery_shop_app/core/provider/wishListProivder.dart';
import 'package:grocery_shop_app/routes/appRoutes.dart';
import 'package:grocery_shop_app/presentation/screens/auth/signIn.dart';
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
        ChangeNotifierProvider(
          create: (context) => Screenprovider(),
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
