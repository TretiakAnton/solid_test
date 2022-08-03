import 'package:flutter/material.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_test/bloc/color_bloc.dart';
import 'package:solid_test/constants.dart';
import 'package:solid_test/home_page.dart';

void main() {
  runApp(Main());
}

///start of App
class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test task',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (BuildContext context) => ColorBloc(
          ReadyColorState(defaultColor, defaultColor, defaultColor),
        ),
        child: HomePage(),
      ),
    );
  }
}
