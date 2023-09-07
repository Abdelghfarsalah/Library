import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_ibrary/core/error/fauiler.dart';
import 'package:my_ibrary/features/search/Domain/repo/searchrepo.dart';
import 'package:my_ibrary/features/search/data/datasource/remotedatasource.dart';
import 'package:my_ibrary/features/search/data/models/bokkmodel/bokkmodel.dart';

class reposearchimple extends reposearch{
  @override
  remotedatasource remot=remotedatasource();
  Future<Either<Failure, List<Bookmodelsearch>>> fetchdatasearch({required String word}) async{
    try{
    var data=await remot.fetchremotedatasource(word: word);
    return right(data);
    }catch(e){
      if (e is DioException) {
        return left(serverfauiler.DioError(e));
      }
      return left(serverfauiler(e.toString()));
    }
  }

}