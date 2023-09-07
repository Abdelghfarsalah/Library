import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_ibrary/core/useCase/usecase.dart';
import 'package:my_ibrary/features/home/Domain/entites/bookentity.dart';
import 'package:my_ibrary/features/search/Domain/usecase/usecsesearch.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());
  Usecasesearch search=usecasesearch();
  Future<void> fetchsearchdata({required String word})async{
    emit(SearchLoading());
    var list=await search.call(word: word);
    
    list.fold((l) {
      emit(Searchfailure());
    }, (r){
      emit(SearchSuccess(list: r));
    });
  }
}
