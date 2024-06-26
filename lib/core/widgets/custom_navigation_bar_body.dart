import 'package:flutter/material.dart';

List<IconData> navigationBarIcons = [
  Icons.home,
  Icons.settings,
  Icons.favorite,
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
      height: 48,
      width: 300,
      margin: const EdgeInsets.only(
        left: 64,
        right: 64,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(36),
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            // blurRadius: 4,
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
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
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
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
