import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/book_button_actions.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/book_details_view_custom_app_bar.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/custom_book_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: [
          const CustomBooksDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.15),
            child: CustomBookImage(image: AssetsData.testImage),
          ),
          const SizedBox(height: kDefaultPadding),
          const Text(
            'The Jungle Book',
            style: Style.textStyle30,
          ),
          const SizedBox(height: 4),
          Opacity(
            opacity: 0.7,
            child: Text(
              'Rudyard Kipling',
              style: Style.textStyle16.copyWith(fontStyle: FontStyle.italic),
            ),
          ),
          const SizedBox(height: 8),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(height: kDefaultPadding),
          const BookDetailsButtonActions(),
          const SizedBox(height: 16),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Style.textStyle16.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: 8),
          const SimilarBooksListView(),
          const SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomBookImage(
              image: AssetsData.testImage,
            ),
          );
        },
      ),
    );
  }
}
