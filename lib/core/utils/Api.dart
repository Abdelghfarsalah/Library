import 'package:dio/dio.dart';

class Apiservices{
  final Dio dio=Dio();
  final  baseurl='https://www.googleapis.com/books/v1/';
  final baseurlsearch='https://www.googleapis.com/books/v1/volumes?q=';
  Future<Map<String,dynamic>> getdata({required String endpoint})async{
    var response=await dio.get('$baseurl$endpoint');
    return response.data;
  }
  Future<Map<String,dynamic>> getdatasearch({required String word})async{
    var response=await dio.get('$baseurlsearch$word');
    return response.data;
  }
}