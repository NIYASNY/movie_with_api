// // part of 'auth_bloc.dart';

// // abstract class AuthenticationEvent extends Equatable {
// //   const AuthenticationEvent();

// //   @override
// //   List<Object> get props => [];
// // }

// // class AppStarted extends AuthenticationEvent {}

// // class LoggedIn extends AuthenticationEvent {
// //   final String token;
// //   const LoggedIn({required this.token});

// //   @override
// //   List<Object> get props => [token];

// //   @override
// //   String toString() => 'LoggedIn ${token}';
// // }

// // class LoggedOut extends AuthenticationEvent {}


// part of 'auth_bloc.dart';

// @immutable
// abstract class AuthEvent {}

// // ignore: must_be_immutable
// class Loginevent extends AuthEvent{
//   String email;
//   String password;
//   Loginevent({required this.email,required this.password});
// }

// class ForgotEvent extends AuthEvent{

// }

// class GoogleConnectEvent extends AuthEvent{

// }

// class SignUpNavigationEvent extends AuthEvent{

// }