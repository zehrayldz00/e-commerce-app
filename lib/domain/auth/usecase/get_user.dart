import 'package:dartz/dartz.dart';
import 'package:ecommerceapp/domain/auth/repository/auth.dart';

import '../../../core/usecase/usecase.dart';
import '../../../service_locator.dart';

class GetUserUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) {
    return sl<AuthRepository>().getUser();
  }
}
