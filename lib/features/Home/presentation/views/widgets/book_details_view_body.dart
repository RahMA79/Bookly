import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/custom_bookDetails_appBar.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/similar_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          // fill all remaining spaces in custom scroll view
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.18),
                  child: const CustomBookImage(),
                ),
                const SizedBox(height: 40),
                const Text(
                  'The Python Book',
                  style: Styles.textStyle30,
                ),
                const SizedBox(height: 6),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    'Mark Reed',
                    style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                const BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(height: 18),
                const BooksAction(),
                const Expanded(child: SizedBox(height: 50)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('You can also like',
                      style: Styles.textStyle14
                          .copyWith(fontWeight: FontWeight.w600)),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SimilarBooksListView(),
                const SizedBox(height: 30),
              ],
            ),
          ),
        )
      ],
    );
  }
}
