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
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app_with_api/bloc/auth/bloc/auth_bloc.dart';
import 'package:movie_app_with_api/home_screen.dart';
import 'package:movie_app_with_api/screens/customtextfield.dart';
import 'package:movie_app_with_api/widgets/custombutton.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  AuthBloc? _authBloc;
  final TextEditingController email =
      TextEditingController(text: "eve.holt@reqres.in");
  final TextEditingController password =
      TextEditingController(text: "cityslicka");

  @override
  void initState() {
    _authBloc = BlocProvider.of<AuthBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 170, horizontal: 15),
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
            SizedBox(
              height: 40.4,
            ),
            CustomTextfield(
              controller: email,
              obsure: false,
            ),
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state is AuthLoading) {
                  Center(
                    child: CircularProgressIndicator(
                      color: Colors.red,
                    ),
                  );
                } else if (state is AutSuccessfull) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const HomeScreen();
                  }));
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text(
                    'Welcome',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 30,
                    ),
                  )));
                } else if (state is AuthError) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text(
                    'Welcome',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 30,
                    ),
                  )));
                }
              },
              child: SizedBox(
                height: 20.0,
              ),
            ),
            CustomTextfield(
              controller: password,
              obsure: true,
            ),
            SizedBox(
              height: 20.0,
            ),
            TextButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => HomeScreen()));
                  _authBloc!.add(
                      Loginevent(email: email.text, password: password.text));
                },
                child: Text('submit'))
            // CustomButton(
            //     text: 'Login',
            //     onpressed: () {
            //       Navigator.push(context,
            //           MaterialPageRoute(builder: (context) => HomeScreen()));
            //       _authBloc!.add(
            //           Loginevent(email: email.text, password: password.text));
            //     }),
          ],
        ),
      ),
    );
  }
}
