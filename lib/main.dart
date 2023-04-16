import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sellerside/Screens/category.dart';
import 'package:sellerside/Screens/welcome_screen.dart';
import 'package:sellerside/Screens/Homescreen.dart';
import 'package:sellerside/Forms/AddGrocery.dart';
import 'package:sellerside/Forms/AddFertilisers.dart';
import 'package:sellerside/Forms/AddSeeds.dart';
import 'package:sellerside/Forms/addtools.dart';
import 'package:sellerside/Forms/addGardeningtools.dart';
import 'package:sellerside/Forms/addothers.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:sellerside/providers/auth_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider (
    providers: [
      ChangeNotifierProvider (
        create: (_) => AuthProvider(),
      )
    ],
    child: MyApp(),
  ),
  );
}


class SplashScreen extends StatefulWidget {
  @override
  static const String screenId = 'splash';
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState() {
    Timer(
        const Duration(
          seconds: 4,
        ),() {
      FirebaseAuth.instance.authStateChanges().listen((User ? user){
        if(user==null){
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) => WelcomeScreen(),
          ));
        }else{
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
        }
      });

    }
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/logoicon.png'),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aman Ka Kaam',
      initialRoute: SplashScreen.screenId,
      routes: {
        SplashScreen.screenId: (context) => SplashScreen(),
        WelcomeScreen.screenId: (context) => WelcomeScreen(),
        HomePage.screenId: (context) => HomePage(),
        CategoryListScreen.screenId: (context) => CategoryListScreen(),
        AddGroceryScreen.screenId: (context) => AddGroceryScreen(),
        AddFertilisersScreen.screenId: (context) => AddFertilisersScreen(),
        AddSeedsSaplingsScreen.screenId: (context) => AddSeedsSaplingsScreen(),
        AddFarmingToolsScreen.screenId: (context) => AddFarmingToolsScreen(),
        AddGardeningToolsScreen.screenId: (context) => AddGardeningToolsScreen(),
        AddOthersScreen.screenId: (context) => AddOthersScreen(),
      },

      theme: ThemeData(
        primarySwatch: Colors.green,

      ),
      home: SplashScreen(),
    );
  }
}
