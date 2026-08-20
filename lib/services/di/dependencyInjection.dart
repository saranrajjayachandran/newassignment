import 'package:get_it/get_it.dart';
import 'package:newassignment/screens/productScreen/data/datasource/productDataSource.dart';
import 'package:newassignment/screens/productScreen/data/repository/productRepoImpl.dart';
import 'package:newassignment/screens/productScreen/domain/repository/productRepository.dart';
import 'package:newassignment/screens/productScreen/domain/useCase/productUseCase.dart';
import 'package:newassignment/services/apiService.dart';

final sl = GetIt.instance;
setUpServices() async {
  sl.registerLazySingleton<ProductDataSource>(() => ProductDataSourceImpl());
  sl.registerLazySingleton<ProductRepository>(() => ProductRepositoryImpl());
  sl.registerLazySingleton<ProductUseCase>(() => ProductUseCase());
  sl.registerSingleton<ApiService>(ApiService());

}