import 'package:newassignment/screens/productScreen/data/model/productModel.dart';

abstract class ProductRepository {
  Future<List<ProductModel>> getProductRepo ();
}