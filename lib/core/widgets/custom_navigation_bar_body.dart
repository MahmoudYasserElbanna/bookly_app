import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

List<IconData> navigationBarIcons = [
  Icons.home,
  Icons.favorite,
  Icons.settings,
  Icons.account_circle,
];

List<String> navigationBarLabels = [
  'Home',
  'Favorite',
  'Settings',
  'Account',
];

int selectedIndex = 0;

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 350,
      margin: const EdgeInsets.only(left: 32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(36),
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            color: Colors.grey.withOpacity(0.3),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (int i = 0; i < navigationBarIcons.length; i++)
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = i;
                });
                onItemTapped(i);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      size: 32,
                      navigationBarIcons[i],
                      color: selectedIndex == i
                          ? Colors.blueAccent
                          : Colors.white30,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      navigationBarLabels[i],
                      style: TextStyle(
                        color: selectedIndex == i
                            ? Colors.blueAccent
                            : Colors.white30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  void onItemTapped(int index) {
    switch (index) {
      case 0:
        GoRouter.of(context).push(AppRoutes.homeViewRoute);
        break;
      case 1:
        GoRouter.of(context).push(AppRoutes.favoriteViewRoute);
        break;
      case 2:
        GoRouter.of(context).push(AppRoutes.settingsViewRoute);
        break;
      case 3:
        GoRouter.of(context).push(AppRoutes.accountViewRoute);
        break;
    }
  }
}
