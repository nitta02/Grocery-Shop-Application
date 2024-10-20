import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_shop_app/data/provider/productProvider.dart';
import 'package:grocery_shop_app/data/provider/screenProvider.dart';
import 'package:grocery_shop_app/data/provider/themeProvider.dart';
import 'package:grocery_shop_app/data/provider/wishListProivder.dart';
import 'package:grocery_shop_app/routes/appRoutes.dart';
import 'package:grocery_shop_app/presentation/pages/auth/signIn.dart';
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
        ChangeNotifierProvider(
          create: (context) => Themeprovider(),
        ),
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: Provider.of<Themeprovider>(context).themeData,
          home: const SignInScreen(),
          routes: AppRoutes.routes,
        ),
      ),
    );
  }
}
