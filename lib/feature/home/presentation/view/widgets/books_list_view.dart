import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/books_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: BooksListViewItem(
              width: 2.7,
              height: 4,
              image: AssetsData.testImage,
            ),
          );
        },
      ),
    );
  }
}
