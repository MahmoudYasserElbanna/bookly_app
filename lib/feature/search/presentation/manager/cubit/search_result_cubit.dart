import 'package:bloc/bloc.dart';
import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/feature/search/presentation/data/repos/search_repos.dart';
import 'package:equatable/equatable.dart';

part 'search_result_state.dart';

class SearchResultCubit extends Cubit<SearchResultState> {
  SearchResultCubit(this.searchRepo) : super(SearchResultInitial());
  final SearchRepo searchRepo;
  Future<void> fetchSearchedBooks({required String query}) async {
    emit(SearchResultLoading());
    var result = await searchRepo.fetchSearchedBooks(query: 'food');
    result.fold((failure) {
      emit(SearchResultFailure(failure.errMessage));
    }, (books) {
      emit(SearchResultSuccess(books));
    });
  }
}
