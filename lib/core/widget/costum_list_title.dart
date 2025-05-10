import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_sql/core/extension/extension.dart';

class CostumListTitle extends GetView {
  CostumListTitle(
  
   {
    super.key,
    required this.leadingText,
    required this.subtitleText,
    required this.titleText,
    required this.edit,
    required this.delete,
    this.cardColor,
    this.cardElevation,
    this.leadingTextColor,
  });
  String leadingText;
  String titleText;
  String subtitleText;
  void Function()? edit;
  void Function()? delete;
  Color? cardColor;
  double? cardElevation;
  Color? leadingTextColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.p8,
      child: Card(
        color: cardColor,
        elevation: cardElevation ?? 8,
        child: ListTile(
          subtitle: Text(subtitleText),
          title: Text(titleText),
          leading: CircleAvatar(
            backgroundColor: leadingTextColor??context.darkGray,
            radius: 20,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
               leadingText ,
                style: TextStyle(
                  fontSize: context.fsnormal,
                  fontWeight: context.fwkalin,
                ),
              ),
            ),
          ),
          trailing: SizedBox(
            width: 120, // max 120–140 yeterli olur
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                context.w8,
                GestureDetector(
                  onTap: edit,
                  child: Icon(Icons.edit, color: context.green),
                ),
                context.w8,
                GestureDetector(
                  onTap: delete,
                  child: Icon(Icons.delete, color: context.red),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
