import 'package:berabear/barrel/barrelPrinc.dart';

var buttonColors = WindowButtonColors(
    iconNormal: Colors.black,
    mouseOver: Colors.yellow[700],
    mouseDown: Colors.yellow[700],
    iconMouseOver: Colors.black,
    iconMouseDown: Colors.black);

var buttonColorsClose = WindowButtonColors(
    iconNormal: Colors.black,
    mouseOver: Colors.red,
    mouseDown: Colors.red,
    iconMouseOver: Colors.white,
    iconMouseDown: Colors.white);

class WindowsButtons extends StatelessWidget {
  final bool minimizeButton;
  final bool maximizeButton;
  final bool closeButton;
  // final Boolean closeButton;

  WindowsButtons(
    this.minimizeButton,
    this.maximizeButton,
    this.closeButton,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        minimizeButton ? MinimizeWindowButton(colors: buttonColors) : Text(''),
        maximizeButton ? MaximizeWindowButton(colors: buttonColors) : Text(''),
        closeButton ? CloseWindowButton(colors: buttonColorsClose) : Text(''),
      ],
    );
  }
}
