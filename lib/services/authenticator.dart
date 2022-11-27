/*
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';


class Authenticator{
  //ES DE TIPO FUTURE POR QUE SERÁ ASINCRONO
  static Future<User?> iniciarSesion(BuildContext context ) async {
    FirebaseAuth authenticator = FirebaseAuth.instance;
    User? user;

    //CREAMOS UN OBJETO DE GOOGLESIGIN PARA PODER UTILIZAR EL SERVICIO
    GoogleSignIn objGoogleSignIn = GoogleSignIn();
    //ESPERAMOS EL RETORNO DEL SERVICIO
    GoogleSignInAccount? objGoogleSignInAccount = await objGoogleSignIn.signIn();

    if(objGoogleSignInAccount! != null){
      //ESPERAMOS EL METODO
      GoogleSignInAuthentication objGoogleSignInAuthentication = await objGoogleSignInAccount.authentication;
      //OBTENEMOS LAS CREDENCIALES
      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: objGoogleSignInAuthentication.accessToken,
        idToken: objGoogleSignInAuthentication.idToken

      );
      try{
        UserCredential userCredential = await authenticator.signInWithCredential(credential);

        user = userCredential.user;
        return user;
      }on FirebaseAuthException {
        print("Error en la autenticacion");
      }

    }

  }
}
 */
