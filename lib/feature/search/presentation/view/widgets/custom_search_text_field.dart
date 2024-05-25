import 'package:bookly_app/feature/search/presentation/manager/cubit/search_result_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatefulWidget {
  const CustomSearchTextField({super.key});

  @override
  State<CustomSearchTextField> createState() => _CustomSearchTextFieldState();
}

class _CustomSearchTextFieldState extends State<CustomSearchTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {
        BlocProvider.of<SearchResultCubit>(context).fetchSearchedBooks(
          query: value,
        );
      },
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
