import 'package:bookly_app/feature/search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:bookly_app/feature/search/presentation/view/widgets/search_view_list_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          CustomSearchTextField(),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
