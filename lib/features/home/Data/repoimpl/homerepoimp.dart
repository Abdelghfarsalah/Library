import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_ibrary/core/error/fauiler.dart';
import 'package:my_ibrary/features/home/Data/dataSources/Home_local_data.dart';
import 'package:my_ibrary/features/home/Data/dataSources/Home_remote_data_sources.dart';
import 'package:my_ibrary/features/home/Domain/entites/bookentity.dart';
import 'package:my_ibrary/features/home/Domain/repo/Homerepo.dart';

class homerepoimple extends HomeRepo {
  final homelocalDataSources homelocalData;
  final homeRemoteDataSources homeRemoteDataSource;

  homerepoimple(
      {required this.homelocalData, required this.homeRemoteDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> fetchBestSellerebook() async {
    try {
      var book = await homeRemoteDataSource.fetchBestSellerebook();
      return right(book);
    } catch (e) {
      if (e is DioException) {
        return left(serverfauiler.DioError(e));
      }
      return left(serverfauiler(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturebook() async {
    try {
      var book = await homeRemoteDataSource.fetchFeaturebook();
      print('loading 2');
      return right(book);
    } catch (e) {
      if (e is DioException) {
        return left(serverfauiler.DioError(e));
      }
      return left(serverfauiler(e.toString()));
    }
  }
}
