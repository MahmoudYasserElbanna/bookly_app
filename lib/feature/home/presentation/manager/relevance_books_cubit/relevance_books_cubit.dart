import 'package:bloc/bloc.dart';
import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/feature/home/data/repos/home_repos.dart';
import 'package:equatable/equatable.dart';

part 'relevance_books_state.dart';

class RelevanceBooksCubit extends Cubit<RelevanceBooksState> {
  RelevanceBooksCubit(this.homeRepos) : super(RelevanceBooksInitial());
  final HomeRepos homeRepos;
  Future<void> fetchRelevanceBooks({required String category}) async {
    emit(RelevanceBooksLoading());
    var result = await homeRepos.fetchRelevanceBooks(category: category);
    result.fold((failure) {
      emit(RelevanceBooksFailure(failure.errMessage));
    }, (books) {
      emit(RelevanceBooksSuccess(books));
    });
  }
}
