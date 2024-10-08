import 'package:bookly_app/features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomAppBar(), FeaturedListView()],
    );
  }
}

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.only(right: 12),
                child: FeaturedListViewItem(),
              );
            }),
      ),
    );
  }
}
