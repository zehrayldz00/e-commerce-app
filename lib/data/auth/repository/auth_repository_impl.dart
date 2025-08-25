import 'package:dartz/dartz.dart';
import 'package:ecommerceapp/data/auth/source/auth_firebase_service.dart';
import 'package:ecommerceapp/domain/auth/repository/auth.dart';

import '../../../service_locator.dart';
import '../models/user_creation_req.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signup(UserCreationReq user) async {
    return sl<AuthFirebaseService>().signup(user);
  }
}
