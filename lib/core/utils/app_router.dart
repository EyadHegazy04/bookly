import 'package:bookly/features/home/presention/views/book_details_view.dart';
import 'package:bookly/features/home/presention/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presention/view/splash_view.dart';

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