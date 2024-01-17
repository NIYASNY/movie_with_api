// part of 'auth_bloc.dart';

// @immutable
// abstract class AuthState {
//   static error(String ?e){
//     log(e??"gfd");
//   }
// }

//  abstract class AuthActionState extends AuthState{}

// final class AuthInitial extends AuthState {}

// class AuthErrorstate extends  AuthActionState{}

// class LoginSuccessState extends AuthActionState{}

// class SignScreenActionState extends AuthActionState{}

// class ForgotActionState  extends AuthActionState{}

// class EmailValidationErrorState extends AuthState {
//   final String errorMessage;
//   EmailValidationErrorState(this.errorMessage);
// }

// class PasswordValidationErrorState extends AuthState {
//   final String errorMessage;
//   PasswordValidationErrorState(this.errorMessage);
// }

// class ServerErrorState extends AuthState {
//   final String errorMessage;
//   ServerErrorState(this.errorMessage);
// }

part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {
  @override
  List<Object?> get props => [];
}

class AutSuccessfull extends AuthState {
  @override
  List<Object?> get props => [];
}

class AuthLoading extends AuthState {
  @override
  List<Object?> get props => [];
}

class AuthError extends AuthState {
  String? msgError;
  AuthError(this.msgError);
  @override
  List<Object?> get props => [msgError];
}
