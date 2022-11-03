import 'package:app_turistica/misc/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_page';

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

          body: Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(child: Image.asset('img/logo.png', height: 250,)),
                SizedBox(height: 15,),
                _userTextField(),
                SizedBox(height: 15,),
                _passwordTextField(),
                SizedBox(height: 20,),
                _bottomLogin(),
              ],
            ),
          ),
        )
    );
  }

  Widget _userTextField(){
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot){
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                hintText: 'ejemplo@correo.com',
                labelText: 'Correo Electronico',

              ),
              onChanged: (value){

              },
            ),
          );
        }
    );
  }

  Widget _passwordTextField(){
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                hintText: 'Contraseña',
                labelText: 'Contraseña',

              ),
              onChanged: (value){

              },
            ),
          );
        }
    );
  }

  Widget _bottomLogin(){

    return StreamBuilder(

        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return ElevatedButton(
            onPressed: () {},

            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
              child: Text('Iniciar Sesion'),

            ),

          );
        }



    );
  }
}


