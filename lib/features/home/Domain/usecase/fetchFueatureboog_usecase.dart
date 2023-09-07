import 'package:dartz/dartz.dart';
import 'package:my_ibrary/core/error/fauiler.dart';
import 'package:my_ibrary/core/useCase/usecase.dart';
import 'package:my_ibrary/features/home/Data/repoimpl/homerepoimp.dart';
import 'package:my_ibrary/features/home/Domain/entites/bookentity.dart';

class fetchfeaturebooksusecase extends Usecase<List<BookEntity>,void>{
  homerepoimple homerep;
  fetchfeaturebooksusecase({required this.homerep});

  @override
  Future<Either<Failure, List<BookEntity>>> call([void p])async {
    return await homerep.fetchFeaturebook();
  }

}