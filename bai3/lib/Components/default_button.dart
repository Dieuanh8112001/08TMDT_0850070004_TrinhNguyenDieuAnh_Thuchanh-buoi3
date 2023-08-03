import 'package:flutter/material.dart';

import '../constant.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback press; // Sử dụng VoidCallback thay vì Function để đảm bảo tính tương thích với Flutter 2.0
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: TextButton( // Sử dụng TextButton thay vì FlatButton vì FlatButton đã bị loại bỏ trong Flutter 2.0
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          backgroundColor: kPrimaryColor,
        ),
        onPressed: press,
        child: Text(
          text.toUpperCase(),
        ),
      ),
    );
  }
}
