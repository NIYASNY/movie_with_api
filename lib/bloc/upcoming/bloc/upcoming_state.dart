part of 'upcoming_bloc.dart';

abstract class UpcomingState {}

class Upcominginitial extends UpcomingState {}

class UpcomingLoaded extends UpcomingState {
  final List<Movie> upcomingMovies;

  UpcomingLoaded(this.upcomingMovies);
}

class UpcomingError extends UpcomingState {
  final String errorMessage;

  UpcomingError(this.errorMessage);
}
