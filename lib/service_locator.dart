import 'package:ecommerceapp/data/auth/repository/auth_repository_impl.dart';
import 'package:ecommerceapp/data/auth/source/auth_firebase_service.dart';
import 'package:ecommerceapp/data/product/repository/product.dart';
import 'package:ecommerceapp/data/product/source/product_firebase_service.dart';
import 'package:ecommerceapp/domain/auth/repository/auth.dart';
import 'package:ecommerceapp/domain/auth/usecase/get_ages.dart';
import 'package:ecommerceapp/domain/auth/usecase/get_user.dart';
import 'package:ecommerceapp/domain/auth/usecase/is_logged_in.dart';
import 'package:ecommerceapp/domain/auth/usecase/send_password_reset_email.dart';
import 'package:ecommerceapp/domain/auth/usecase/signup.dart';
import 'package:ecommerceapp/domain/product/usecases/get_top_selling.dart';
import 'package:get_it/get_it.dart';

import 'data/category/repository/category.dart';
import 'data/category/source/category_firebase_service.dart';
import 'domain/auth/usecase/signin.dart';
import 'domain/category/repository/category.dart';
import 'domain/category/usecases/get_categories.dart';
import 'domain/product/repository/product.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Services
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());
  sl.registerSingleton<CategoryFirebaseService>(CategoryFirebaseServiceImpl());
  sl.registerSingleton<ProductFirebaseService>(ProductFirebaseServiceImpl());

  // Repositories
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
  sl.registerSingleton<CategoryRepository>(CategoryRepositoryImpl());
  sl.registerSingleton<ProductRepository>(ProductRepositoryImpl());

  // UseCases
  sl.registerSingleton<SignupUseCase>(SignupUseCase());
  sl.registerSingleton<SigninUseCase>(SigninUseCase());
  sl.registerSingleton<GetAgesUseCase>(GetAgesUseCase());
  sl.registerSingleton<SendPasswordResetEmailUseCase>(
    SendPasswordResetEmailUseCase(),
  );
  sl.registerSingleton<IsLoggedInUseCase>(IsLoggedInUseCase());
  sl.registerSingleton<GetUserUseCase>(GetUserUseCase());
  sl.registerSingleton<GetCategoriesUseCase>(GetCategoriesUseCase());
  sl.registerSingleton<GetTopSellingUseCase>(GetTopSellingUseCase());
}
