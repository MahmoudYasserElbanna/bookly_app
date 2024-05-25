import 'package:bookly_app/core/functions/get_url_lanucher.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookDetailsButtonActions extends StatelessWidget {
  const BookDetailsButtonActions({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomButton(
            text: 'Free',
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
            onPressed: () {
              getUrlLauncher(bookModel.volumeInfo!.previewLink!);
            },
            text: getText(context, bookModel),
            textColor: Colors.white,
            backgroundColor: const Color(0XFFEF8262),
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(18),
              topRight: Radius.circular(18),
            ),
          ),
        ),
      ],
    );
  }

  String getText(context, BookModel bookModel) {
    if (bookModel.volumeInfo!.previewLink == null) {
      return ScaffoldMessenger.of(context)
          .showSnackBar(
            const SnackBar(
              content: Text('Not Available'),
            ),
          )
          .toString();
    } else {
      return 'Preview';
    }
  }
}
