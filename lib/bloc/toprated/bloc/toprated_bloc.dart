import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app_with_api/api/api.dart';
import 'package:movie_app_with_api/movie.dart';

part 'toprated_event.dart';
part 'toprated_state.dart';

class TopratedBloc extends Bloc<TopRatedEvent, TopRatedState> {
  final Api api = Api();

  TopratedBloc() : super(TopratedInitial()) {

  @override
  Stream<TopRatedState> mapEventtoState(TopRatedEvent event) async* {
    if (event is FetchTopRatedMovies) {
      try {
        final List<Movie> topratedMovies = await api.getTopRatedMovies();
        yield TopratedLoaded(topratedMovies);
      } catch (e) {
        yield TrendingError(e.toString());
      }
    }
  }
  }
}
