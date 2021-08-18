import 'package:flutter/material.dart';
import 'package:landfcm/utils/decoration.dart';
import 'package:landfcm/utils/widget.dart';

class LoginPage extends StatefulWidget {
  
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _scaffoldKey = GlobalKey<ScaffoldState>(); // new line
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  
  Widget _buildSignIn(BuildContext context ){
    return TextButton(
      child: const Text('Sign In'),
      style: ButtonStyle(
        backgroundColor:  MaterialStateProperty.all<Color>(Colors.blue.shade100),
        shadowColor:  MaterialStateProperty.all<Color>(Colors.pink.shade600),/// Color(Colors.accents)
      ),
      onPressed: () {
        // Perform some action
        print("bấm vào là login nè" + emailController.text);
         // Create a SnackBar.
        final snackBar = SnackBar(
          content: Text('Message is deleted!'),
          action: SnackBarAction(
            label: 'UNDO',
            onPressed: () {
              // this._showSnackBarMsgRestored(context);
            },
          ),
        );
        // Find the Scaffold in the widget tree
        // and use it to show a SnackBar.
        Scaffold.of(context).showSnackBar(snackBar);
      },
    );
  }
  Widget __buildForgot(BuildContext context){
    return TextButton(
      child: Text(
        'Bạn quên mật khẩu?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );
  }
  Widget __buildRegister(BuildContext context){
    return Expanded(
      child: TextButton(
        child: Text(
          'Tạo tài khoản mới?',
          style: TextStyle(color: Colors.black54),
        ),
        onPressed: () {
          /// chuyển qua màn hình register
          // Navigator.pushReplacementNamed(context, "/register");
        },
      )
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
                  TextFormField(
                    // controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                    decoration: UtilDecoration.getSimpleDecoration("nhập email của bạn.."),
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    // controller: passwordController,
                    autofocus: false,
                    obscureText: true,
                    decoration:  UtilDecoration.getSimpleDecoration("Nhập password của bạn..."),
                  ),
                  SizedBox(height: 15.0),
                  _buildSignIn(ctxOfScaffold),
                  __buildForgot(context),
                  __buildRegister(context),
                ],
              );
            }
        )
      ),
    );
  }
}