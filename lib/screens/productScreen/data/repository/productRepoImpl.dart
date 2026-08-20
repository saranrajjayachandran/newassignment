import 'package:newassignment/screens/productScreen/data/datasource/productDataSource.dart';
import 'package:newassignment/screens/productScreen/data/model/productModel.dart';
import 'package:newassignment/services/di/dependencyInjection.dart';
import 'package:newassignment/screens/productScreen/domain/repository/productRepository.dart';

class ProductRepositoryImpl implements ProductRepository {

  ProductDataSource ds = sl<ProductDataSource>();

  Future<List<ProductModel>> getProductRepo() async {
    final result = await ds.getProductDS();
    return result;
  }

}