import 'package:dartz/dartz.dart';
import 'package:my_ibrary/core/error/fauiler.dart';
import 'package:my_ibrary/features/search/data/models/bokkmodel/bokkmodel.dart';

abstract class reposearch{
  Future<Either<Failure,List<Bookmodelsearch>>> fetchdatasearch({required String word});
}