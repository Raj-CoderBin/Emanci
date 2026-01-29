import 'package:flutter/material.dart';

Expanded myBox({required double height, required Widget widget}) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: height,
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 50, 50, 50),
            borderRadius: BorderRadius.circular(20),
          ),
          child: widget,
        ),
      ),
    ),
  );
}
