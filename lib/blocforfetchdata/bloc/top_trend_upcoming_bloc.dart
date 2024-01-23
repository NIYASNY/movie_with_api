import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app_with_api/api/api.dart';
import 'package:movie_app_with_api/movie.dart';

part 'top_trend_upcoming_event.dart';
part 'top_trend_upcoming_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final Api api;

  MovieBloc(this.api) : super(MovieInitial());

  Stream<MovieState> mapEventToState(MovieEvent event) async* {
    try {
      if (event is FetchTrendingMovies) {
        final trendingMovies = await api.getTrendingmovies();
        yield MovieLoaded(trendingMovies);
      } else if (event is FetchTopRatedMovies) {
        final topRatedMovies = await api.getTopRatedMovies();
        yield MovieLoaded(topRatedMovies);
      } else if (event is FetchUpcomingMovies) {
        final upcomingMovies = await api.getupcomingMovies();
        yield MovieLoaded(upcomingMovies);
      }
    } catch (e) {
      yield MovieError('Failed to fetch movies: $e');
    }
  }
}
