import 'package:app_turistica/pages/detail_page/detail_page.dart';
import 'package:app_turistica/pages/home/home_page.dart';
import 'package:app_turistica/pages/sign_in/login_page.dart';
import 'package:app_turistica/pages/navpages/main_page.dart';
import 'package:app_turistica/pages/welcome/welcome_page.dart';
import 'package:app_turistica/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'app/app.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const App());
}
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

      return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      /*
      initialRoute: LoginPage.id,
      routes: {
        LoginPage.id: (context)=>LoginPage(),
      },
      */

      home: GoogleAuthenticator()
    );



  }
}
 */



