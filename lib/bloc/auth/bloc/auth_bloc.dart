import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_with_api/reposetory/repo_auth.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo _authRepo;
  AuthBloc(this._authRepo) : super(AuthInitial()) {
    on<Loginevent>((event, emit) async {
      emit(AuthLoading());
      final result = await _authRepo.login(event.email, event.password);
      if (result != "Missing password" || result != "User not found") {
        emit(AutSuccessfull());
      } else if (result == "Missing Password" || result != "User not found") {
        emit(AuthError("Missing Password Or user not found"));
      }
    });
  }
}

// import 'dart:async';
// import 'dart:convert';
// import 'dart:developer';
// import 'package:bloc/bloc.dart';
// import 'package:dio/dio.dart';
// // ignore: depend_on_referenced_packages
// import 'package:meta/meta.dart';
// import 'package:movie_app_with_api/constants.dart';


// part 'auth_event.dart';
// part 'auth_state.dart';

// class AuthBloc extends Bloc<AuthEvent, AuthState> {

//   //  SignUpBloc signup= SignUpBloc();

//   AuthBloc() : super(AuthInitial()) {
//     on<Loginevent>(loginevent);
//     on<ForgotEvent>(forgotEvent);
//     on<GoogleConnectEvent>(googleConnectEvent);
//     on<SignUpNavigationEvent>(signUpNavigationEvent);
//   }

// FutureOr<void> loginevent(Loginevent event, Emitter<AuthState> emit) async {
//   Dio dio = Dio();
//   var data = {
//     "email": event.email,
//     "password": event.password,
//   };
//   try {
//     final response = await dio.post(
//       "$loginApi/users/signin$loginkey",
//       data: jsonEncode(data),
//       options: Options(
//         headers: {'Content-Type': 'application/json'},
//       ),
//     );

//     log(response.statusCode.toString());
//     print(response.statusCode);

//     if (response.statusCode == 200) {
      
//       emit(LoginSuccessState());
//     } else if (response.statusCode == 401) {
//       if (response.data != null && response.data['error'] == 'Invalid username or password') {
//         emit(AuthState.error("Invalid username or password. Please try again."));
//       } else {
//         emit(AuthState.error("Login failed. Check your credentials."));
//       }
//     }
//   }on DioException {
//     emit(AuthState.error("An error occurred. Please try again later."));
//   }
// }

//   FutureOr<void> forgotEvent(ForgotEvent event, Emitter<AuthState> emit) {
//     emit(ForgotActionState());
//   }

//   FutureOr<void> googleConnectEvent(GoogleConnectEvent event, Emitter<AuthState> emit) {
//   // print("google clicked");
//   }

//   FutureOr<void> signUpNavigationEvent(SignUpNavigationEvent event, Emitter<AuthState> emit) {
//   emit(SignScreenActionState());
//   }

// }


