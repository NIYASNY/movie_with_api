import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app_with_api/splash/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(create: (context) => AuthBloc(AuthRepo()))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FlickHub',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xFF23272E),
          useMaterial3: true,
        ),
        home: SplashScreen()),
    );
  }
}
