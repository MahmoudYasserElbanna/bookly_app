import 'package:bookly_app/feature/home/presentation/view/widgets/newest_books_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: Column(
            children: [
              //BooksListViewItem(),
              Divider(),
            ],
          ),
        );
      },
    );
  }
}
