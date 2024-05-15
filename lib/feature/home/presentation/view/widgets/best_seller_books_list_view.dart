import 'package:bookly_app/feature/home/presentation/view/widgets/best_seller_books_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedBestSellerListView extends StatelessWidget {
  const FeaturedBestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestSellerBooksItem(),
        );
      },
    );
  }
}
