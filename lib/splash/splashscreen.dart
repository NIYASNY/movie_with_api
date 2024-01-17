import 'package:flutter/material.dart';
import 'package:movie_app_with_api/home_screen.dart';
import 'package:movie_app_with_api/loginhome/loginhome.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const loginHome()),
      );
    });

    return Scaffold(
      backgroundColor:  Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://cdn.dribbble.com/users/1820876/screenshots/5221678/preview.jpg?resize=400x300&vertical=center",
                width: 230,
                height: 230,
              ),
            ],
          ),
        ),
      ),
    );
  }
}