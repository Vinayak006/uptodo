import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "../../../constants/const.dart";
import "../../../constants/strings.dart";
import "../bloc/introduction_bloc.dart";

class IntroductionPageNavigation extends StatelessWidget {
  const IntroductionPageNavigation({
    super.key,
  });

  @override
  Widget build(final BuildContext context) => Padding(
        padding: EdgeInsets.all(Const.kScreenPadding),
        child: Builder(
          builder: (final BuildContext context) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  context
                      .read<IntroductionBloc>()
                      .add(BackButtonPressedEvent());
                },
                child: const Text(Strings.back),
              ),
              BlocBuilder<IntroductionBloc, IntroductionState>(
                builder: (
                  final BuildContext context,
                  final IntroductionState state,
                ) {
                  final bool isLast =
                      (state is IntroductionPageChangedState && state.isLast) ||
                          (state is IntroductionPageState && state.isLast);
                  if (isLast) {
                    return ElevatedButton(
                      onPressed: () {
                        context
                            .read<IntroductionBloc>()
                            .add(NextButtonPressedEvent());
                      },
                      child: const Text(Strings.getStarted),
                    );
                  }
                  return ElevatedButton(
                    onPressed: () {
                      context
                          .read<IntroductionBloc>()
                          .add(NextButtonPressedEvent());
                    },
                    child: const Text(Strings.next),
                  );
                },
              ),
            ],
          ),
        ),
      );
}
