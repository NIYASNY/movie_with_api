part of 'upcoming_bloc.dart';

sealed class UpcomingState extends Equatable {
  const UpcomingState();
  
  @override
  List<Object> get props => [];
}

final class UpcomingInitial extends UpcomingState {}
