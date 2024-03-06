  import 'package:flutter/material.dart';

class TTextFormFieldStyles {


static  InputDecoration customFormFieldDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30.0),
    borderSide: const BorderSide(
      color: Colors.grey,
      width: 1.0,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30.0),
    borderSide: const BorderSide(
      color: Colors.grey,
      width: 1.0,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30.0),
    borderSide: const BorderSide(
      color: Colors.blue,
      width: 2.0,
    ),
  ),
);

}