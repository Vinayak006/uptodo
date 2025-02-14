import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../../constants/const.dart";
import "../bloc/introduction_bloc.dart";
import "../models/introduction_content.dart";
import "../widgets/introduction_page.dart";
import "../widgets/introduction_page_navigation.dart";
import "../widgets/introduction_screen_appbar.dart";

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  final PageController pageController = PageController();

  @override
  Widget build(final BuildContext context) => BlocProvider<IntroductionBloc>(
        create: (final BuildContext context) => IntroductionBloc(),
        child: Scaffold(
          appBar: const IntroductionScreenAppbar(),
          bottomNavigationBar: const IntroductionPageNavigation(),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: Const.kScreenPadding * 2),
            child: BlocConsumer<IntroductionBloc, IntroductionState>(
              listener: stateListener,
              listenWhen: (
                final IntroductionState previous,
                final IntroductionState current,
              ) =>
                  current is IntroductionPageState,
              builder:
                  (final BuildContext context, final IntroductionState state) =>
                      PageView.builder(
                controller: pageController,
                onPageChanged: (final int value) {
                  context.read<IntroductionBloc>().add(PageChangedEvent(value));
                },
                itemBuilder: (final BuildContext context, final int index) {
                  final IntroductionContent currentContent =
                      IntroductionBloc.content.elementAt(index);
                  return IntroductionPage(
                    content: currentContent,
                    page: index,
                  );
                },
                itemCount: IntroductionBloc.content.length,
              ),
            ),
          ),
        ),
      );

  Future<void> stateListener(
    final BuildContext context,
    final IntroductionState state,
  ) async {
    await pageController.animateToPage(
      (state as IntroductionPageState).page,
      duration: Durations.medium1,
      curve: Curves.easeIn,
    );
  }
}
