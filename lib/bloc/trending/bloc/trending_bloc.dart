import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app_with_api/api/api.dart';
import 'package:movie_app_with_api/movie.dart';

part 'trending_event.dart';
part 'trending_state.dart';

class TrendingBloc extends Bloc<TrendingEvent, TrendingState> {
  final Api api = Api();

  TrendingBloc() : super(TrendingInitial()) {}

  @override
  Stream<TrendingState> mapEventtoState(TrendingEvent event) async* {
    if (event is FetchTrendingEvent) {
      try {
        final List<Movie> trendingmovies = await api.getTrendingmovies();
        yield TrendingLoaded(trendingmovies);
      } catch (e) {
        yield TrendingError(e.toString());
      }
    }
  }
}
