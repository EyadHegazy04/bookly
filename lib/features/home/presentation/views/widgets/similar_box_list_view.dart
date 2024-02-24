import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class SimilarBoxListView extends StatefulWidget {
  const SimilarBoxListView({super.key});

  @override
  State<SimilarBoxListView> createState() => _SimilarBoxListViewState();
}

class _SimilarBoxListViewState extends State<SimilarBoxListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: CustomBookImage(),
            );
          }),
    );
  }
}
