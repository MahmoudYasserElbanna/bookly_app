import 'package:bookly_app/core/widgets/cusotom_field_search_result.dart';
import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/newest_books_list_view_item.dart';
import 'package:bookly_app/feature/search/presentation/manager/cubit/search_result_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchResultCubit, SearchResultState>(
      builder: (context, state) {
        if (state is SearchResultSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BooksListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is SearchResultFailure) {
          return CustomErrMessage(errMessage: state.errMessage);
        } else {
          return const CustomFieldSearchResult();
        }
      },
    );
  }
}
