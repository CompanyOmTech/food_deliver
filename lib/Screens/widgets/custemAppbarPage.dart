// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:olocker_demo/utils/dimantion.dart';
import 'package:olocker_demo/utils/extension_method.dart';

class CustemAppbarPage extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final IconData icon;
  final IconData icon1;
  Color? color;
  CustemAppbarPage({
    Key? key,
    required this.title,
    required this.icon,
    required this.icon1,
    this.color = Colors.black,
  }) : super(key: key);
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        title,
        style: TextStyle(color: color),
      ),
      actions: [
        Icon(
          icon1,
          color: color,
        ).commonOnlyPadding(right: Dimantion.iconPaddingRight),
      ],
    );
  }
}
