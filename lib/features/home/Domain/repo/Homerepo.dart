import 'package:dartz/dartz.dart';
import 'package:my_ibrary/core/error/fauiler.dart';

import '../entites/bookentity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchFeaturebook();
  Future<Either<Failure, List<BookEntity>>> fetchBestSellerebook();
}