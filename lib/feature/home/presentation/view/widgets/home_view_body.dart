import 'package:bookly_app/assets.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/custom_appbar.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/custom_list_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        CustomListViewItem(),
      ],
    );
  }
}
