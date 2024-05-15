import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/book_details_view_custom_app_bar.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/custom_book_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              horizontal: width * 0.17, vertical: kDefaultPadding),
          child: CustomBookImage(image: AssetsData.testImage),
        )
      ],
    );
  }
}
