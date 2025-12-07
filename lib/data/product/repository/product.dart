import 'package:dartz/dartz.dart';
import 'package:ecommerceapp/data/product/source/product_firebase_service.dart';
import 'package:ecommerceapp/domain/product/repository/product.dart';

import '../../../service_locator.dart';
import '../models/product.dart';

class ProductRepositoryImpl extends ProductRepository {
  @override
  Future<Either> getTopSelling() async {
    var returnedData = await sl<ProductFirebaseService>().getTopSelling();
    return returnedData.fold(
      (error) {
        return Left(error);
      },
      (data) {
        return Right(
          List.from(
            data,
          ).map((e) => ProductModel.fromMap(e).toEntity()).toList(),
        );
      },
    );
  }
}
