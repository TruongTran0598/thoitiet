import 'package:flutter/material.dart';

import 'location_choice.dart';

AppBar AppbarWidget () {
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
      child: LocationChoice(),
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

