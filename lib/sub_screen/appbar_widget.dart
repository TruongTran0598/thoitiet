import 'package:flutter/material.dart';

AppBar AppbarScreen () {
  return AppBar(
    backgroundColor: Colors.pink[100].withOpacity(0.5),
    elevation: 0,
    leading: IconButton(
      icon: Image.asset(
        "assets/images/icon_menu.png",
        height: 25,
      ),
      onPressed: () {

      },
    ),
    title: Center(
      child: Text(
        "Hà Nội",
        style: TextStyle(
            fontSize: 23,
            color: Colors.black,
            fontWeight: FontWeight.w400
        ),
      ),
    ),
    actions: [
      IconButton(
          icon: Image.asset(
            "assets/images/settings.png",
            height: 30,
          ),
          onPressed: () {

          }
      )
    ],
  );
}