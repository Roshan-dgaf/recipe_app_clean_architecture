// import 'package:softwarica_student_management_bloc/features/batch/data/data_source/batch_data_source.dart';
// import 'package:softwarica_student_management_bloc/features/batch/data/model/batch_hive_model.dart';

import 'package:recipe_app/core/network/hive_service.dart';
import 'package:recipe_app/feature/Product/data/data_source/product_data_source.dart';
import 'package:recipe_app/feature/Product/data/model/product_hive_model.dart';
import 'package:recipe_app/feature/Product/domain/entity/product_entity.dart';

class ProductLocalDataSource implements IProductDataSource {
  final HiveService hiveService;

  ProductLocalDataSource({required this.hiveService});

  @override
  Future<void> createProduct(ProductEntity product) async {
    try {
      // Convert ProductEntity to ProductHiveModel
      final productHiveModel = ProductHiveModel.fromEntity(product);
      await hiveService.addProduct(productHiveModel);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> deleteProduct(String id) async {
    try {
      await hiveService.deleteProduct(id);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<List<ProductEntity>> getProduct() {
    try {
      return hiveService.getAllProduct().then(
        (value) {
          return value.map((e) => e.toEntity()).toList();
        },
      );
    } catch (e) {
      throw Exception(e);
    }
  }
}
