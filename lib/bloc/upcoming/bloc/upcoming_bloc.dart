import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app_with_api/api/api.dart';
import 'package:movie_app_with_api/movie.dart';

part 'upcoming_event.dart';
part 'upcoming_state.dart';

class UpcomingBloc extends Bloc<upcomingEvent, UpcomingState> {
    final Api api = Api();

  UpcomingBloc() : super(Upcominginitial()) {}

   @override
  Stream<UpcomingState> mapEventToState(upcomingEvent event) async* {
    if (event is FetchUpcomingMovies) {
      try {
        final List<Movie> upcomingMovies = await api.getupcomingMovies();
        yield UpcomingLoaded(upcomingMovies);
      } catch (e) {
        yield UpcomingError(e.toString());
      }
    }
  }
}
