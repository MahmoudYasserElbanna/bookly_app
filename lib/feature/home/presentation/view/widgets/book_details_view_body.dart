import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/books_details_section.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/similar_books_list_view_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.model});
  final BookModel model;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                BookDetailsSection(
                  bookModel: model,
                ),
                SimilarBooksListViewSection(
                  model: model,
                ),
                const SizedBox(height: kDefaultPadding),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
