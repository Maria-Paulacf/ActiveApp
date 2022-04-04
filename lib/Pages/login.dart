import 'package:flutter/material.dart';
import 'package:activebro/behaviors/hiddenScrollBehavior.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ScrollConfiguration(
          behavior: HiddenScrollBehavior(),
          child: Form(
            child: ListView(
              children: <Widget>[
                FlutterLogo(
                  style: FlutterLogoStyle.markOnly,
                  size: 200.0,
                ),
                TextFormField(autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: 'Email or UserName'),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Password'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    'Bienvenido al servicio de entrenamiento ActiveBro',
                    style: TextStyle(color: Color.fromARGB(255, 200, 200, 200)),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed('/forgotPassword');
                  },
                  child: const Text('Olvidé la contraseña'),
                  style: TextButton.styleFrom(
                      primary: Colors.amber,),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.account_circle),
      ),
      persistentFooterButtons: <Widget>[
        TextButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          child: Text('Aún no tengo una cuenta'),
        ),
      ],
    );
  }

}