import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_ibrary/features/home/Domain/entites/bookentity.dart';

part 'salla_state.dart';

class SallaCubit extends Cubit<SallaState> {
  SallaCubit() : super(SallaInitial());
  List<BookEntity> sallaList = [];
  void addtosalla({required BookEntity book}) {
    sallaList.add(book);
    emit(addSuccess());
  }

  void removetosalla({required BookEntity book}) {
    sallaList.remove(book);
    emit(addSuccess());
    emit(removesuccess(list: sallaList));
  }
}
