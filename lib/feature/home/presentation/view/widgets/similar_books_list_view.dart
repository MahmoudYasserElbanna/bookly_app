import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_progress_indicator.dart';
import 'package:bookly_app/feature/home/presentation/manager/relevance_books_cubit/relevance_books_cubit.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RelevanceBooksCubit, RelevanceBooksState>(
      builder: (context, state) {
        if (state is RelevanceBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.20,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRoutes.bookDetailsViewRoute,
                          extra: state.books[index]);
                    },
                    child: CustomBookImage(
                        width: 2,
                        height: 3.5,
                        imageUrl: state
                            .books[index].volumeInfo!.imageLinks!.thumbnail!),
                  ),
                );
              },
            ),
          );
        } else if (state is RelevanceBooksFailure) {
          return CustomErrMessage(errMessage: state.errMessage);
        } else {
          return const CustomCircularProgressIndicator();
        }
      },
    );
  }
}
