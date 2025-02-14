import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "../../../constants/strings.dart";
import "../bloc/introduction_bloc.dart";

class IntroductionScreenAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const IntroductionScreenAppbar({
    super.key,
  });

  @override
  Widget build(final BuildContext context) => AppBar(
        leading: TextButton(
          onPressed: () {
            context.read<IntroductionBloc>().add(SkipButtonPressedEvent());
          },
          child: const Text(Strings.skip),
        ),
      );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
