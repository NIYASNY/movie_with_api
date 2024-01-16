import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'upcoming_event.dart';
part 'upcoming_state.dart';

class UpcomingBloc extends Bloc<UpcomingEvent, UpcomingState> {
  UpcomingBloc() : super(UpcomingInitial()) {
    on<UpcomingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
