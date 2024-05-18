import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Opacity(
            opacity: 0.6,
            child: Icon(FontAwesomeIcons.magnifyingGlass),
          ),
        ),
        hintText: 'Search',
        enabledBorder: buildInputOutLineInputBorder(),
        focusedBorder: buildInputOutLineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildInputOutLineInputBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.all(
        Radius.circular(16),
      ),
    );
  }
}
