import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../data/auth_firebase.dart';
import '../../widgets/error_snackbar.dart';
import '../routes/routes_names.dart';

class loginPageController extends GetxController{

  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void signIn() {
    Get.showOverlay(
      asyncFunction: () async {
        try {
          await const AuthFirebase().signInWithEmail(
            emailController.text.trim(),
            passwordController.text,
          );
          Get.offNamed(RouteNames.home);
        } on FirebaseAuthException catch (e) {
          Get.showSnackbar(ErrorSnackbar(e.message ?? e.code));
        }
      },
    );
  }
}