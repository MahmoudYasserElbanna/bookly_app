import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:bookly_app/feature/search/presentation/view/widgets/search_view_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              'Search Result',
              style: Style.textStyle18,
            ),
          ),
          SizedBox(height: 16),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: SearchResultListView(),
          )),
        ],
      ),
    );
  }
}
