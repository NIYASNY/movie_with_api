part of 'trending_bloc.dart';

abstract class TrendingState {}

class TrendingInitial extends TrendingState {}

class TrendingLoaded extends TrendingState {
  final List<Movie> trendingmovies;
  TrendingLoaded(this.trendingmovies);
}

class TrendingError extends TrendingState {
  final String errorMessege;

  TrendingError(this.errorMessege);
}
