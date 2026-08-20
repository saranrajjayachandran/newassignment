import 'package:dio/dio.dart';

class ApiService{
  final Dio dio = Dio();
  Future<List<dynamic>> getProductService () async {
    try{
      final result = await dio.get("https://fakestoreapi.com/products");
      List<dynamic> finalResult = result.data;
      return finalResult;
    }catch(e){
      print("EXCEPTION OCCURRED INSIDE APISERVICE ON GETPRODUCTSERVICE -----> " + e.toString());
      return [];
    }
  }

}