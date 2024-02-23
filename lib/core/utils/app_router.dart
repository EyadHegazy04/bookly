
import 'package:go_router/go_router.dart';
import '../../features/home/presentation/views/book_details_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/search/presentation/widgets/search_view_body.dart';
import '../../features/splash/presentation/view/splash_view.dart';

abstract class AppRouter{
static const kHomeView = "/homeView";
static const kBookDetailsView = '/bookDetailsView';
static const kSearchViewBody = '/searchViewBody';
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
      GoRoute(
        path: kSearchViewBody,
        builder: ( context,  state) => const SearchViewBody(),
      ),
    ],
  );
}