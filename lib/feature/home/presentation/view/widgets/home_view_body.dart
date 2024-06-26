import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/newest_books_list_view.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/books_list_view.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/home_view_custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../../core/widgets/custom_navigation_bar_body.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const CustomScrollView(slivers: [
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
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: NewestBooksListView(),
          ),
        ),
      ]),
      Positioned(
        top: MediaQuery.of(context).size.height * 0.87,
        child: const CustomNavigationBar(),
      ),
    ]);
  }
}
