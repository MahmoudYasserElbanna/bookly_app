import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/book_details_button_actions.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksListViewSection extends StatelessWidget {
  const SimilarBooksListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: kDefaultPadding),
        const BookDetailsButtonActions(),
        const SizedBox(height: 16),
        Text(
          'You can also like',
          style: Style.textStyle16.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 8),
        const SimilarBooksListView(),
      ],
    );
  }
}
