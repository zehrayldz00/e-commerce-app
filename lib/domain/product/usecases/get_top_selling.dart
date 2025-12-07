import 'package:dartz/dartz.dart';
import 'package:ecommerceapp/core/usecase/usecase.dart';
import 'package:ecommerceapp/domain/product/repository/product.dart';

import '../../../service_locator.dart';

class GetTopSellingUseCase implements UseCase<Either, dynamic>{
  @override
  Future<Either> call({params}) async{
    return await sl<ProductRepository>().getTopSelling();
  }

}