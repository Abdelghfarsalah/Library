import 'package:dartz/dartz.dart';

import '../../../../core/error/fauiler.dart';
import '../../../../core/useCase/usecase.dart';
import '../../Data/repoimpl/homerepoimp.dart';
import '../entites/bookentity.dart';

class fetchbestsellerebooksusecase extends Usecase<List<BookEntity>,void>{
  
  homerepoimple homerep;
  fetchbestsellerebooksusecase({required this.homerep});

  @override
  Future<Either<Failure, List<BookEntity>>> call([void p])async {
    return await homerep.fetchBestSellerebook();
  }
}