/// abstract class for events that bloc receive
abstract class ColorEvent {}

///type of event that we send to bloc to receive color
class GetColorEvent extends ColorEvent {
  ///field that have capacity of max value of color
  final int maxGenerated;

  ///constructor for event
  GetColorEvent(this.maxGenerated);
}
