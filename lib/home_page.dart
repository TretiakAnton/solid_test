import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_test/bloc/color_bloc.dart';
import 'package:solid_test/constants.dart';

///main page
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final ColorBloc _colorBloc = BlocProvider.of<ColorBloc>(context);

    return Scaffold(
      body: InkWell(
        onTap: () => _colorBloc.add(GetColorEvent(maxValueOfColor)),
        child: Stack(
          children: <Widget>[
            BlocBuilder<ColorBloc, ColorState>(
              builder: (BuildContext context, colorState) {
                return colorState is ReadyColorState
                    ? AnimatedContainer(
                        duration:
                            const Duration(milliseconds: durationOfAnimation),
                        color: Color.fromRGBO(
                          colorState.red,
                          colorState.green,
                          colorState.blue,
                          opacityOfColor,
                        ),
                      )
                    : const CircularProgressIndicator();
              },
            ),
            const Center(
              child: Text(
                helloString,
                style: TextStyle(
                  fontSize: fontSize,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
