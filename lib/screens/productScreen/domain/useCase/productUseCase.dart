import 'package:newassignment/screens/productScreen/data/model/productModel.dart';
import 'package:newassignment/screens/productScreen/domain/repository/productRepository.dart';
import 'package:newassignment/services/di/dependencyInjection.dart';

class ProductUseCase {
  ProductRepository repo = sl<ProductRepository>();
  Future<List<ProductModel>> getProductUseCase () {
    final result = repo.getProductRepo();
    return result;
  }
}