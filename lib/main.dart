import 'package:docker/UI/dashboard.dart';
import 'package:docker/UI/loginPage.dart';
import 'package:flutter/material.dart';
import "package:animated_splash_screen/animated_splash_screen.dart";
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      routes: <String, WidgetBuilder>{
        '/Login': (context) => LoginPage(),
        '/Dashboard': (context) => Dashboard(),
      },
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Docker App",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: AnimatedSplashScreen(
        centered: true,
        splashIconSize: (MediaQuery.of(context).size.height *
                MediaQuery.of(context).size.width) /
            8,
        splash: Container(
          child: Image(
            image: AssetImage(
              'assets/docker_splash.gif',
            ),
            height: MediaQuery.of(context).size.height,
          ),
        ),
        duration: 3000,
        nextScreen: LoginPage(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
