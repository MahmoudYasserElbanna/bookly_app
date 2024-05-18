import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookDetailsButtonActions extends StatelessWidget {
  const BookDetailsButtonActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '19.99 \$',
              textColor: Colors.black,
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(18),
                topLeft: Radius.circular(18),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free Preview',
              textColor: Colors.white,
              backgroundColor: Color(0XFFEF8262),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(18),
                topRight: Radius.circular(18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
