  import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TTextFormFieldStyles {


static  InputDecoration customFormFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30.0),
    borderSide: BorderSide(
      color: Colors.grey,
      width: 1.0,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30.0),
    borderSide: BorderSide(
      color: Colors.grey,
      width: 1.0,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30.0),
    borderSide: BorderSide(
      color: Colors.blue,
      width: 2.0,
    ),
  ),
);

}