import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'toprated_event.dart';
part 'toprated_state.dart';

class TopratedBloc extends Bloc<TopratedEvent, TopratedState> {
  TopratedBloc() : super(TopratedInitial()) {
    on<TopratedEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
