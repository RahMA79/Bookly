import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeaturedListView(),
        SizedBox(
          height: 16,
        ),
        Text(
          'Best Seller',
          style: Styles.titleMedium,
        )
      ],
    );
  }
}
