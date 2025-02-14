import "dart:async";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../../constants/strings.dart";
import "../models/introduction_content.dart";

part "introduction_event.dart";
part "introduction_state.dart";

class IntroductionBloc extends Bloc<IntroductionEvent, IntroductionState> {
  IntroductionBloc() : super(IntroductionPageState()) {
    on<NextButtonPressedEvent>(onNextButtonPressed);
    on<BackButtonPressedEvent>(onBackButtonPressed);
    on<SkipButtonPressedEvent>(onSkipButtonPressed);
    on<GetStartedButtonPressedEvent>(onGetStartedButtonPressed);
    on<PageChangedEvent>(onPageChanged);
  }

  static final List<IntroductionContent> content = <IntroductionContent>[
    IntroductionContent(
      image: "assets/images/intro1.svg",
      header: Strings.manageTasksHeader,
      body: Strings.manageTasksBody,
    ),
    IntroductionContent(
      image: "assets/images/intro2.svg",
      header: Strings.createRoutineHeader,
      body: Strings.createRoutineBody,
    ),
    IntroductionContent(
      image: "assets/images/intro3.svg",
      header: Strings.organizeTasksHeader,
      body: Strings.organizeTasksBody,
    ),
  ];
  int currentPage = 0;

  FutureOr<void> onNextButtonPressed(
    final NextButtonPressedEvent event,
    final Emitter<IntroductionState> emit,
  ) {
    if (currentPage < content.length - 1) {
      currentPage++;
      emit(
        IntroductionPageState(
          page: currentPage,
          isLast: currentPage == content.length - 1,
        ),
      );
    }
  }

  FutureOr<void> onBackButtonPressed(
    final BackButtonPressedEvent event,
    final Emitter<IntroductionState> emit,
  ) {
    if (currentPage > 0) {
      currentPage--;
      emit(IntroductionPageState(page: currentPage));
    }
  }

  FutureOr<void> onGetStartedButtonPressed(
    final GetStartedButtonPressedEvent event,
    final Emitter<IntroductionState> emit,
  ) {}

  FutureOr<void> onSkipButtonPressed(
    final SkipButtonPressedEvent event,
    final Emitter<IntroductionState> emit,
  ) {
    if (currentPage != content.length - 1) {
      currentPage = content.length - 1;
      emit(IntroductionPageState(page: currentPage, isLast: true));
    }
  }

  FutureOr<void> onPageChanged(
    final PageChangedEvent event,
    final Emitter<IntroductionState> emit,
  ) {
    currentPage = event.page;
    emit(
      IntroductionPageChangedState(
        isLast: currentPage == content.length - 1,
        page: currentPage,
      ),
    );
  }
}
