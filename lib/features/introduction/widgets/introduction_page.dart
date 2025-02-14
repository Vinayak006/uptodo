import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:gap/gap.dart";
import "../models/introduction_content.dart";

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({
    required this.content,
    required this.page,
    super.key,
  });

  final IntroductionContent content;
  final int page;

  @override
  Widget build(final BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Column(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1 / 0.8,
          child: SvgPicture.asset(
            content.image,
          ),
        ),
        Gap(size.height * 0.06),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          children: List<Widget>.generate(
            3,
            (final int index) => Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: page == index
                    ? Theme.of(context).highlightColor
                    : Theme.of(context).disabledColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ).toList(),
        ),
        Gap(size.height * 0.06),
        Text(
          content.header,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Gap(size.height * 0.06),
        Text(
          content.body,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).hintColor,
              ),
        ),
      ],
    );
  }
}
