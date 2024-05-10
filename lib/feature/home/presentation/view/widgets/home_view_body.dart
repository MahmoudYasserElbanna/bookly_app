import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/books_list_view.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
        Padding(
          padding: EdgeInsets.only(left: 24, top: 36, bottom: 36),
          child: Text(
            'Best Seller',
            style: Style.mediumText,
          ),
        ),
      ],
    );
  }
}
