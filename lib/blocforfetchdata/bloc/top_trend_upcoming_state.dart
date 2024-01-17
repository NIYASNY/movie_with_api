part of 'top_trend_upcoming_bloc.dart';

abstract class MovieState extends Equatable {
  const MovieState();
}

 class MovieInitial extends MovieState {
  @override
  List<Object?> get props => [];
 }

 class MovieLoaded extends MovieState {
  final List<Movie> movies;

  MovieLoaded(this.movies);

  @override
  List<Object?> get props => [movies];
}

class MovieError extends MovieState {
  final String error;

  MovieError(this.error);

  @override
  List<Object?> get props => [error];
}
