part of 'top_trend_upcoming_bloc.dart';

abstract class MovieEvent extends Equatable {
  const MovieEvent();
}

class FetchTrendingMovies extends MovieEvent {
  @override
  List<Object?> get props => [];
}

class FetchTopRatedMovies extends MovieEvent {
  @override
  List<Object?> get props => [];
}

class FetchUpcomingMovies extends MovieEvent {
  @override
  List<Object?> get props => [];
}
