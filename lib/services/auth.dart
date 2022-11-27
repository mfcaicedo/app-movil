/*
* import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'authenticator.dart';

class GoogleAuthenticator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () async {
            User? user = await Authenticator.iniciarSesion(context);
            print(user?.displayName);
          },
          color: Colors.blue,
          textColor: Colors.white,
        ),
      ),
    );
  }
}

* */


