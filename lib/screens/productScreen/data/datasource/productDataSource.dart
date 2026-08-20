import 'package:newassignment/screens/productScreen/data/model/productModel.dart';
import 'package:newassignment/services/di/dependencyInjection.dart';
import 'package:newassignment/services/apiService.dart';

abstract class ProductDataSource {
  Future<List<ProductModel>> getProductDS ();
}

class ProductDataSourceImpl implements ProductDataSource {

  ApiService apiService  = sl<ApiService>();
  Future<List<ProductModel>> getProductDS () async {
    final result = await apiService.getProductService();
    List<ProductModel> lst_products = result.map((e) => ProductModel.fromJson(e),).toList();
    return lst_products;
  }

}