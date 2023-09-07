part of 'search_cubit.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}
final class Searchfailure extends SearchState {}
final class SearchSuccess extends SearchState {
  List<BookEntity> list;
  SearchSuccess({required this.list});
}