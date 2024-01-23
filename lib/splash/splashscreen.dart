import 'package:flutter/material.dart';
import 'package:movie_app_with_api/home_screen.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
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
                "https://cdn.dribbble.com/users/307142/screenshots/9688763/media/1b01786d6042938e5bbeb5bc4ef9a69e.gif",
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