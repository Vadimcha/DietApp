import 'package:flutter/material.dart';

Widget MyAppBar() {
  return AppBar(
    title: const Text(
      'Breakfast',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    backgroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
    leading: GestureDetector(
      onTap: () => {},
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xffF7F8F8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.black,
          size: 20,
        ),
      ),
    ),
    actions: [
      GestureDetector(
        onTap: () => {},
        child: Container(
          width: 35,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(
            Icons.more_horiz_rounded,
            color: Colors.black,
            size: 20,
          ),
        ),
      )
    ],
  );
}
