import 'package:my_ibrary/core/utils/Api.dart';
import 'package:my_ibrary/features/search/data/models/bokkmodel/bokkmodel.dart';

class remotedatasource{
  Apiservices serivces=Apiservices();
  Future <List<Bookmodelsearch>> fetchremotedatasource({required String word}) async
  {
    var data=await serivces.getdatasearch(word: word);
    List<Bookmodelsearch> list=[];
    for (var element in data['items']) {
      list.add(Bookmodelsearch.fromJson(element));
    }

    return list;
  }
}