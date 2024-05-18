import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          size: 16,
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
        ),
        const SizedBox(width: 6),
        const Text(
          '4.8',
          style: Style.textStyle16,
        ),
        const SizedBox(width: 6),
        Opacity(
          opacity: 0.5,
          child: Text(
            '(2450)',
            style: Style.textStyle16.copyWith(),
          ),
        )
      ],
    );
  }
}
