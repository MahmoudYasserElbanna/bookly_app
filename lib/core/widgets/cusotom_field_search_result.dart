import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomFieldSearchResult extends StatelessWidget {
  const CustomFieldSearchResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'I have searched far and wide, but we haven\'t found anything.',
            style: Style.textStyle20.copyWith(color: Colors.grey),
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
        Image.asset(
          AssetsData.noSearchResult,
          height: 240,
        ),
      ],
    );
  }
}
