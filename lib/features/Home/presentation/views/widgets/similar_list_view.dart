import 'package:bookly_app/features/Home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.165,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 12),
              child: CustomBookImage(),
            );
          }),
    );
  }
}
