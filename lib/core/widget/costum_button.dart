import 'package:flutter/material.dart';

import '../extension/extension.dart';

class CostumButton extends StatelessWidget {
  CostumButton({
    required this.text,
    required this.onPressed,
    super.key,
    this.bgColor,
    this.textColor,
    this.textSize,
    this.textWeight,
    this.yukseklik,
    this.genislik
  });
  String text;
  void Function()? onPressed;
  Color? bgColor;
  Color? textColor;
  double? textSize;
  double? yukseklik;
  double? genislik;
  FontWeight? textWeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.p8,
      child: SizedBox(
        height:yukseklik?? 45,
        width: genislik?? 150,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(bgColor ?? context.white),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              color: textColor ?? context.black,
              fontSize: textSize ?? context.fsnormal,
              fontWeight: textWeight ?? context.fwnormalKalinlik,
            ),
          ),
        ),
      ),
    );
  }
}
