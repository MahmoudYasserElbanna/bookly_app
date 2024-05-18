import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:bookly_app/feature/search/presentation/view/widgets/search_view_list_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(height: 16),
          Text(
            'Search Result',
            style: Style.textStyle18,
          ),
          SizedBox(height: 16),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
