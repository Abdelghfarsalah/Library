part of 'fetchfeaturebook_cubit.dart';

 class FetchfeaturebookState extends Equatable {
  const FetchfeaturebookState();

  @override
  List<Object> get props => [];
}

class FetchfeaturebookInitial extends FetchfeaturebookState {}
class Fetchfeaturebookloading extends FetchfeaturebookState {}
class Fetchfeaturebooksuccess extends FetchfeaturebookState {
  List<BookEntity> books;
  Fetchfeaturebooksuccess({required this.books});
}
class Fetchfeaturebookfauiler extends FetchfeaturebookState {}
