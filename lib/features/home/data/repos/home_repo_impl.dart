import 'package:bookly/core/error/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  late final ApiService apiService;
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async{
  try {
    var data = await  apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
    List<BookModel> books = [];
    for(var item in data ['items']){
      books.add(BookModel.fromJson(item));
    }
    return right(books);
  }  catch (e) {
return left(ServerFailure());  }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
