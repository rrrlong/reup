part of 'splash_bloc.dart';

sealed class SplashEvent extends Equatable {
  const SplashEvent();

  @override
  List<Object?> get props => [];
}

class Init extends SplashEvent {
  const Init();

  @override
  List<Object?> get props => [];
}
