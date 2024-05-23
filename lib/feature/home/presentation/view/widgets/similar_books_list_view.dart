import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_progress_indicator.dart';
import 'package:bookly_app/feature/home/presentation/manager/relevance_books_cubit/relevance_books_cubit.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: CustomBookImage(
                      width: 2,
                      height: 3.5,
                      imageUrl:
                          'https://hips.hearstapps.com/sev.h-cdn.co/assets/16/12/480x711/gallery-1458597159-1442249474-rs-634x940-150817114528-634-jungle-book-poster-d23.jpg?resize=1200:*'),
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
