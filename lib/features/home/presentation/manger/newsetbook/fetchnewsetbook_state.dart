part of 'fetchnewsetbook_cubit.dart';

sealed class FetchnewsetbookState extends Equatable {
  const FetchnewsetbookState();

  @override
  List<Object> get props => [];
}

final class FetchnewsetbookInitial extends FetchnewsetbookState {}

class Fetchnewsetbookloading extends FetchnewsetbookState {}
class Fetchnewsetbooksuccess extends FetchnewsetbookState {
  List<BookEntity> books;
  Fetchnewsetbooksuccess({required this.books});
}
class Fetchnewsetbookfauiler extends FetchnewsetbookState {}