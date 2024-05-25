import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/book_details_view_custom_app_bar.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBooksDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.15),
          child: CustomBookImage(
            width: 1,
            height: 1.3,
            imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!,
          ),
        ),
        const SizedBox(height: kDefaultPadding),
        Text(
          bookModel.volumeInfo!.title!,
          style: Style.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 4),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo!.authors![0],
            style: Style.textStyle16.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(height: 8),
        const BookRating(
          pageCount: 300,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
