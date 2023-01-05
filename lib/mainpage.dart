import 'dart:js';

import 'package:flutter/material.dart';
import 'package:myfirstflutterproject/SecondPage.dart';

import 'firstPage.dart';

void main()
{
  runApp(MaterialApp(
    home: Myfirstt(),
    routes: {
    "Second":(context)=> Second(),
    },
  ));
}