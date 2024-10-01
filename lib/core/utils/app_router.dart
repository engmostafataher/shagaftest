import 'package:go_router/go_router.dart';
import 'package:shagaftest/features/auth/presentation/views/login_auth.dart';
import 'package:shagaftest/features/auth/presentation/views/sing_up.dart';
import 'package:shagaftest/features/intro/onbording/onbording_screen.dart';
import 'package:shagaftest/features/intro/splash_screen/Splash_screen.dart';


abstract class AppRouter {
  static const KLogin = '/login';
  static const KSingUp = '/singup';
  static const KResetPassword = '/resetpassword';
  static const KVerify = '/verify';
  static const KOnboarding = '/enbording';


  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
     GoRoute(
      path: KLogin,
      builder: (context, state) => const LoginAuth(),
    ),
    GoRoute(path: KSingUp,builder: (context, state) => const SingUp(),),
    GoRoute(
      path: KOnboarding,
      builder: (context, state) => const OnbordingScreen(),
    ),
  ]);
}
