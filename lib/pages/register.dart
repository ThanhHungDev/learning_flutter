import 'package:flutter/material.dart';
import 'package:landfcm/utils/decoration.dart';
import 'package:landfcm/utils/widget.dart';

class RegisterPage extends StatefulWidget {
  
  @override
  _RegisterPageState createState() => new _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final _scaffoldKey = GlobalKey<ScaffoldState>(); // new line
  TextEditingController nameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  
  Widget _buildSignUp(BuildContext context ){
    return TextButton(
      child: const Text('Sign In'),
      style: ButtonStyle(
        backgroundColor:  MaterialStateProperty.all<Color>(Colors.blue.shade100),
        shadowColor:  MaterialStateProperty.all<Color>(Colors.pink.shade600),/// Color(Colors.accents)
      ),
      onPressed: () {
        // Perform some action
        print("emailController.text: " + emailController.text);
      },
    );
  }
  Widget __buildBackLogin(BuildContext context){
    return TextButton(
      child: Text(
        'Bạn đã có tài khoản?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {
        Navigator.pushReplacementNamed(context, "/");
      },
    );
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: Center(
        child: Builder(
            builder: (BuildContext ctxOfScaffold)  {
              return ListView(
                shrinkWrap: true,
                padding: EdgeInsets.only(left: 24.0, right: 24.0),
                children: <Widget>[
                  UtilWidget.buildLogo(context),
                  SizedBox(height: 45.0),
                  TextField(
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    autofocus: false,
                    decoration: UtilDecoration.getSimpleDecoration("nhập tên của bạn.."),
                  ),
                  SizedBox(height: 45.0),
                  TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                    decoration: UtilDecoration.getSimpleDecoration("nhập email của bạn.."),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    controller: passwordController,
                    autofocus: false,
                    obscureText: true,
                    decoration:  UtilDecoration.getSimpleDecoration("Nhập password của bạn..."),
                  ),
                  SizedBox(height: 15.0),
                  _buildSignUp(ctxOfScaffold),
                  __buildBackLogin(context)
                ],
              );
            }
        )
      ),
    );
  }
}