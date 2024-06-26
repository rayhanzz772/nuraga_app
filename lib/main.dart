import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nuraga_app/firebase_options.dart';
import 'package:nuraga_app/views/splash_screen/screen/splash_screen.dart';
import 'package:nuraga_app/views/sign_up/sign_up.dart';
import 'package:nuraga_app/views/sign_in/sign_in.dart';
import 'package:nuraga_app/views/home_screen/home_screen.dart';
import 'package:nuraga_app/views/bottom_bar/bottom_bar.dart';
import 'package:nuraga_app/views/welcome_screen/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NURAGA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/sign_in': (context) => SignInScreen(),
        '/sign_up': (context) => SignUpScreen(),
        '/menu_select': (context) => MenuSelectScreen(),
        '/home': (context) => HomeScreen(),
        '/bottom_bar': (context) => BottomBar(),
      },
    );
  }
}
