
import 'package:go_router/go_router.dart';
import '../../features/home/presentation/views/book_details_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/splash/presentation/view/splash_view.dart';

abstract class AppRouter{
static const kHomeView = "/homeView";
static const kBookDetailsView = '/bookDetailsView';
  static final  router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: ( context,  state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: ( context,  state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: ( context,  state) => const BookDetailsView(),
      ),
    ],
  );
}