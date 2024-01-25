part of 'toprated_bloc.dart';

abstract class TopRatedState {}

class TopratedInitial extends TopRatedState {}

class TopratedLoaded extends TopRatedState {
  final List<Movie> topratedMovies;

  TopratedLoaded(this.topratedMovies);
}

class TrendingError extends TopRatedState {
  final String errorMessage;

  TrendingError(this.errorMessage);
}
