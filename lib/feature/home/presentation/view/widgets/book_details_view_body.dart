import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/book_button_actions.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/book_details_view_custom_app_bar.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/custom_book_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBooksDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.25, vertical: kDefaultPadding),
          child: CustomBookImage(image: AssetsData.testImage),
        ),
        const Text(
          'The Jungle Book',
          style: Style.textStyle30,
        ),
        const SizedBox(height: 4),
        const Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Style.textStyle16,
          ),
        ),
        const SizedBox(height: 8),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 30),
        const BookDetailsButtonActions(),
      ],
    );
  }
}
