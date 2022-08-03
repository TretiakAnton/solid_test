import 'dart:math';

// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_test/bloc/color_event.dart';
import 'package:solid_test/bloc/color_state.dart';

export 'color_event.dart';
export 'color_state.dart';

///Main class of bloc architecture
class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ///constructor of class
  ColorBloc(ColorState initialState) : super(initialState);

  @override
  Stream<ColorState> mapEventToState(ColorEvent event) async* {
    final colorList = List.filled(3, 0);
    if (event is GetColorEvent) {
      final Random _random = Random();
      for (int iteration = 0; iteration < colorList.length; iteration++) {
        colorList[iteration] = _random.nextInt(event.maxGenerated);
      }
    }
    yield ReadyColorState(
      colorList.first,
      colorList.elementAt(1),
      colorList.last,
    );
  }
}
