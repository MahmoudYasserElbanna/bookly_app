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
              getUrl(bookModel.volumeInfo!.previewLink!);
            },
            text: getText(bookModel),
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

  Future<void> getUrl(String path) async {
    Uri url = Uri.parse(path);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw Exception('Could not launch $url');
    }
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo!.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Preview';
    }
  }
}
