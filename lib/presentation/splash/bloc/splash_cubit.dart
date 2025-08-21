import 'package:ecommerceapp/presentation/splash/bloc/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(DisplaySplash());

  /* there is only a method to check if user logged in redirects user to home page
  or to sign in page */

  void appStarted() async{
    await Future.delayed(const Duration(seconds:2));
    emit(UnAuthenticated());
  }
}
