part of 'relevance_books_cubit.dart';

sealed class RelevanceBooksState extends Equatable {
  const RelevanceBooksState();

  @override
  List<Object> get props => [];
}

final class RelevanceBooksInitial extends RelevanceBooksState {}

final class RelevanceBooksSuccess extends RelevanceBooksState {
  final List<BookModel> books;
  const RelevanceBooksSuccess(this.books);
}

final class RelevanceBooksFailure extends RelevanceBooksState {
  final String errMessage;
  const RelevanceBooksFailure(this.errMessage);
}

final class RelevanceBooksLoading extends RelevanceBooksState {}
