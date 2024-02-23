import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presention/views/widgets/similar_box_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_details_appbar.dart';
import 'custom_book_image.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [SliverFillRemaining(
        child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .27),
                child: const CustomBookImage(),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "The Jungle Book ",
                style: Styles.textStyle30,
              ),
              const SizedBox(
                height: 6,
              ),
              Opacity(
                opacity: .7,
                child: Text(
                  "Rudyard Kipling  ",
                  style: Styles.textStyle18.copyWith(fontStyle:FontStyle.italic,

                      fontWeight: FontWeight.w800),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const BookRating(mainAxisAlignment: MainAxisAlignment.center,),
              const SizedBox(
                height: 25,
              ),
              const BooksAction(),
              const  Expanded(
                child:  SizedBox(
                  height: 30,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("You Can also Like",
                    style: Styles.textStyle14.copyWith(
                        fontWeight: FontWeight.w600
                    )),
              ),
              const SizedBox(height: 16,),
              const  SimilarBoxListView(),
              const SizedBox(height: 30,),
            ],
          ),
        ),
      )],
    );



  }
}
