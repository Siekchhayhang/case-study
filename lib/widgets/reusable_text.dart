import 'package:flutter/material.dart';

class ReUsableText extends StatelessWidget {
  final String? text;
  final TextStyle style;
  const ReUsableText({super.key,  this.text, required this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!=null?text!:"",
      style: style,
      textAlign: TextAlign.left,
      maxLines: 10,
      overflow: TextOverflow.fade,
    );
  }
}
