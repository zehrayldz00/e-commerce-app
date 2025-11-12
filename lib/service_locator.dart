import 'package:ecommerceapp/data/auth/repository/auth_repository_impl.dart';
import 'package:ecommerceapp/data/auth/source/auth_firebase_service.dart';
import 'package:ecommerceapp/domain/auth/repository/auth.dart';
import 'package:ecommerceapp/domain/auth/usecase/get_ages.dart';
import 'package:ecommerceapp/domain/auth/usecase/get_user.dart';
import 'package:ecommerceapp/domain/auth/usecase/is_logged_in.dart';
import 'package:ecommerceapp/domain/auth/usecase/send_password_reset_email.dart';
import 'package:ecommerceapp/domain/auth/usecase/signup.dart';
import 'package:get_it/get_it.dart';

import 'domain/auth/usecase/signin.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Services
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());

  // Repositories
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  // UseCases
  sl.registerSingleton<SignupUseCase>(SignupUseCase());
  sl.registerSingleton<SigninUseCase>(SigninUseCase());
  sl.registerSingleton<GetAgesUseCase>(GetAgesUseCase());
  sl.registerSingleton<SendPasswordResetEmailUseCase>(
    SendPasswordResetEmailUseCase(),
  );
  sl.registerSingleton<IsLoggedInUseCase>(IsLoggedInUseCase());
  sl.registerSingleton<GetUserUseCase>(GetUserUseCase());
}
