import 'package:dartz/dartz.dart';
import 'package:my_ibrary/core/error/fauiler.dart';
import 'package:my_ibrary/core/useCase/usecase.dart';
import 'package:my_ibrary/features/home/Domain/entites/bookentity.dart';
import 'package:my_ibrary/features/search/Domain/repo/searchrepo.dart';
import 'package:my_ibrary/features/search/data/repoimple/repoimple.dart';

class usecasesearch extends Usecasesearch<List<BookEntity>,String>{
  @override
  reposearchimple callfunction=reposearchimple();
  
  @override
  Future<Either<Failure, List<BookEntity>>> call({required String word}) async{
    return await callfunction.fetchdatasearch(word: word);
  }
  

}