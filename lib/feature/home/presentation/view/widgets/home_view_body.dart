import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/newest_books_list_view.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/books_list_view.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/home_view_custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: HomeViewCustomAppBar(),
            ),
            BooksListView(),
            SizedBox(height: 36),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Text(
                'Newest Books',
                style: Style.textStyle20,
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      SliverFillRemaining(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: NewestBooksListView(),
        ),
      ),
    ]);
  }
}
