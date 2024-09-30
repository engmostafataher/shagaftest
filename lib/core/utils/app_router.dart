import 'package:go_router/go_router.dart';
import 'package:shagaftest/features/auth/presentation/views/login_auth.dart';
import 'package:shagaftest/features/auth/presentation/views/sing_up.dart';


abstract class AppRouter {
  static const KSingUp = '/singup';
  static const KResetPassword = '/resetpassword';
  static const KVerify = '/verify';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginAuth(),
    ),
    GoRoute(path: KSingUp,builder: (context, state) => const SingUp(),)
  ]);
}
