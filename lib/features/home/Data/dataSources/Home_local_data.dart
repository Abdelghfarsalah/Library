import 'package:hive/hive.dart';

import '../../Domain/entites/bookentity.dart';

abstract class homelocalDataSources {
  List<dynamic> fetchFeaturebook();
  List<dynamic> fetchBestSellerebook();
}

class homelocalDataSourcesimple extends homelocalDataSources {
  @override
  List<BookEntity> fetchBestSellerebook() {
    var box = Hive.box<BookEntity>('kNewestBox');
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchFeaturebook() {
    var box = Hive.box<BookEntity>('kFeaturedBox');
    return box.values.toList()  ;
  }
}
