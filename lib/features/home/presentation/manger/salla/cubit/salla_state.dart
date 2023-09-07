part of 'salla_cubit.dart';

sealed class SallaState extends Equatable {
  const SallaState();

  @override
  List<Object> get props => [];
}

final class SallaInitial extends SallaState {}
final class addSuccess extends SallaState {}
final class removesuccess extends SallaState {
  final List<BookEntity> list;
  removesuccess({required this.list});
}
