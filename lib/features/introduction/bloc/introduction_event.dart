part of "introduction_bloc.dart";

@immutable
sealed class IntroductionEvent {}

class NextButtonPressedEvent extends IntroductionEvent {}

class BackButtonPressedEvent extends IntroductionEvent {}

class SkipButtonPressedEvent extends IntroductionEvent {}

class GetStartedButtonPressedEvent extends IntroductionEvent {}

class PageChangedEvent extends IntroductionEvent {
  PageChangedEvent(this.page);
  final int page;
}
