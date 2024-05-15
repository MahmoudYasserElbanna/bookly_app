import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/books_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class BestSellerBooksItem extends StatelessWidget {
  const BestSellerBooksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.bookDetailsRoute);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            BooksListViewItem(
              width: 2.7,
              height: 4,
              image: AssetsData.testImage,
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: const Text(
                      'Harry Potter and the Goblet Fire',
                      style: Style.textStyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'J.K. Robert Bruce',
                    style: Style.textStyle14,
                  ),
                  const SizedBox(height: 4),
                  const Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: Row(
                      children: [
                        Text(
                          '19.99 \$',
                          style: Style.textStyle20,
                        ),
                        Spacer(),
                        BookRating(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
