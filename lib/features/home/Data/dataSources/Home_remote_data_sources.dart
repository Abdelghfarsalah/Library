import 'package:hive_flutter/adapters.dart';
import 'package:my_ibrary/core/utils/Api.dart';
import 'package:my_ibrary/features/home/Data/models/bokkmodel/bokkmodel.dart';

import '../../Domain/entites/bookentity.dart';

abstract class homeRemoteDataSources {
  Future<List<BookEntity>> fetchFeaturebook();
  Future<List<BookEntity>> fetchBestSellerebook();
}

class homeRemoteDataSourcesimplementatio extends homeRemoteDataSources {
  Apiservices Api = Apiservices();
  @override
  Future<List<BookEntity>> fetchBestSellerebook() async {
    var data = await Api.getdata(endpoint: 'volumes?q=programming');
    List<BookEntity> list = [];
    for (var element in data['items']) {
      list.add(Bookmodel.fromJson(element));
    }
    
    var box= await Hive.box<BookEntity>('kFeaturedBox');
    box.addAll(list);
    return list;
  }

  @override
  Future<List<BookEntity>> fetchFeaturebook() async {
    var data = await Api.getdata(endpoint: 'volumes?q=Business & Economics');
    List<BookEntity> list = [];
    for (var element in data['items']) {
      list.add(Bookmodel.fromJson(element));
    }
        var box= await Hive.box<BookEntity>('kNewestBox');
    box.addAll(list);
    return list;
  }
}
