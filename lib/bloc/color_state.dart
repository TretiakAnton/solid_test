///state that bloc gives to us
abstract class ColorState {}

///state with ready color
class ReadyColorState extends ColorState {
  ///color for RGB
  final int blue;

  ///color for RGB
  final int red;

  ///color for RGB
  final int green;

  ///constructor for state
  ReadyColorState(
    this.blue,
    this.red,
    this.green,
  );
}
