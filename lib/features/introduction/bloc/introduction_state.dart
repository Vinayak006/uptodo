part of "introduction_bloc.dart";

@immutable
sealed class IntroductionState {}

final class IntroductionPageState extends IntroductionState {
  IntroductionPageState({this.isLast = false, this.page = 0});

  final int page;
  final bool isLast;
}

final class IntroductionPageChangedState extends IntroductionPageState {
  IntroductionPageChangedState({required super.isLast, required super.page});
}
