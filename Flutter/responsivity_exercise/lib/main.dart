import 'package:flutter/material.dart';
import 'package:responsivity_exercise/responsividade_media_query.dart';
import 'package:responsivity_exercise/responsividade_row_col.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Responsivity",
    debugShowCheckedModeBanner: false,
    //home: ResponsividadeMediaQuery(),
    home: ResponsividadeRowCol(),
  ));
}
