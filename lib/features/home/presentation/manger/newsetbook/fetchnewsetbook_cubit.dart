import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_ibrary/features/home/Data/dataSources/Home_local_data.dart';
import 'package:my_ibrary/features/home/Data/dataSources/Home_remote_data_sources.dart';
import 'package:my_ibrary/features/home/Data/repoimpl/homerepoimp.dart';
import 'package:my_ibrary/features/home/Domain/entites/bookentity.dart';
import 'package:my_ibrary/features/home/Domain/usecase/fetchbestsellerbook_usecase.dart';

part 'fetchnewsetbook_state.dart';

class FetchnewsetbookCubit extends Cubit<FetchnewsetbookState> {
  FetchnewsetbookCubit() : super(FetchnewsetbookInitial());
  fetchbestsellerebooksusecase fetch=fetchbestsellerebooksusecase(homerep: homerepoimple(
          homelocalData: homelocalDataSourcesimple(),
          homeRemoteDataSource: homeRemoteDataSourcesimplementatio()));
  Future<void> fetchbestebook() async {
    emit(Fetchnewsetbookloading());
    var booklist = await fetch.call();
    booklist.fold((l) {
      emit(Fetchnewsetbookfauiler());
    }, (r) {
      emit(Fetchnewsetbooksuccess(books: r));
    });
}
}