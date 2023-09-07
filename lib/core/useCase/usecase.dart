import 'package:dartz/dartz.dart';
import 'package:my_ibrary/core/error/fauiler.dart';
import 'package:my_ibrary/features/home/Domain/entites/bookentity.dart';

abstract class Usecase<type,param>{
  Future<Either<Failure,type>> call([param p]);
}
abstract class Usecasesearch<type,String>{
  Future<Either<Failure,List<BookEntity>>> call({required String word});
}