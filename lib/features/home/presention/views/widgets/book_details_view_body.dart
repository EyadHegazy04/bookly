import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_details_appbar.dart';
import 'custom_book_image.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 43,
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
            height: 18,
          ),
       const BookRating(mainAxisAlignment: MainAxisAlignment.center,),
          const SizedBox(
            height: 37,
          ),
         const BooksAction()
        ],
      ),
    );
  }
}