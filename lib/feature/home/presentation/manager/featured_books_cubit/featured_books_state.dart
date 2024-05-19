part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoaded extends FeaturedBooksState {}

final class FeaturedBooksFailed extends FeaturedBooksState {
  final String errMessage;

  const FeaturedBooksFailed({required this.errMessage});
}

final class FeaturedBooksSuccess extends FeaturedBooksState {
  // let the cubit handling data with UI elements
  final List<BookModel> books;
  const FeaturedBooksSuccess({required this.books});
}
