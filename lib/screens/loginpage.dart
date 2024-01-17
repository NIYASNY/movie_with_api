// import 'package:flutter/material.dart';
// import 'package:movie_app_with_api/bloc/auth/bloc/auth_bloc.dart';

// class LoginPage extends StatelessWidget {
//   LoginPage({super.key});

//   // final AuthBloc authBloc = AuthBloc();

//   // final TextEditingController _emailcontroller = TextEditingController();
//   // final TextEditingController _passcontroller = TextEditingController();

//   //  String? _validateEmail(String? value) {
//   //   if (value == null || value.isEmpty) {
//   //     return 'Please enter your email';
//   //   } else if (!_isValidEmail(value)) {
//   //     return 'Please enter a valid email address';
//   //   }
//   //   return null;
//   // }

//   // String? _validatePassword(String? value) {
//   //   if (value == null || value.isEmpty) {
//   //     return 'Please enter your password';
//   //   }
//   //   return null;
//   // }

//   //  bool _isValidEmail(String email) {
//   //   return RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
//   //       .hasMatch(email);
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:movie_app_with_api/screens/customtextfield.dart';
import 'package:movie_app_with_api/widgets/custombutton.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 150),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  'Login Page',
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ),
              CustomTextfield(
                controller: email,
                obsure: false,
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomTextfield(
                controller: password,
                obsure: true,
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomButton(text: '', onpressed: () {
                print('object');
              })
            ],
          ),
        ),
      ),
    );
  }
}
