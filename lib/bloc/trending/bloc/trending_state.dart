part of 'trending_bloc.dart';

sealed class TrendingState extends Equatable {
  const TrendingState();
  
  @override
  List<Object> get props => [];
}

final class TrendingInitial extends TrendingState {}
