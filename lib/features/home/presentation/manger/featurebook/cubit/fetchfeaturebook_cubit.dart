import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_ibrary/features/home/Data/dataSources/Home_local_data.dart';
import 'package:my_ibrary/features/home/Data/dataSources/Home_remote_data_sources.dart';
import 'package:my_ibrary/features/home/Data/repoimpl/homerepoimp.dart';
import 'package:my_ibrary/features/home/Domain/entites/bookentity.dart';
import 'package:my_ibrary/features/home/Domain/usecase/fetchFueatureboog_usecase.dart';

part 'fetchfeaturebook_state.dart';

class FetchfeaturebookCubit extends Cubit<FetchfeaturebookState> {
  FetchfeaturebookCubit() : super(FetchfeaturebookInitial());

  final fetchfeaturebooksusecase fetch = fetchfeaturebooksusecase(
      homerep: homerepoimple(
          homelocalData: homelocalDataSourcesimple(),
          homeRemoteDataSource: homeRemoteDataSourcesimplementatio()));

  Future<void> fetchfeaturebook() async {
    emit(Fetchfeaturebookloading());
    var booklist = await fetch.call();
    booklist.fold((l) {
      emit(Fetchfeaturebookfauiler());
    }, (r) {
      emit(Fetchfeaturebooksuccess(books: r));
    });
  }
}
