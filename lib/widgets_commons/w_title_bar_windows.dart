import 'package:berabear/barrel/barrelPrinc.dart';
import 'package:berabear/widgets_commons/w_buttons_windows.dart';

class TitleBarWindows extends StatelessWidget {
  const TitleBarWindows({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 31,
      child: Container(
        //constraints: BoxConstraints.expand(),
        color: corPrincipal,
        child: Column(
          children: [
            WindowTitleBarBox(
              child: Row(
                children: [
                  Expanded(
                    child: MoveWindow(
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'BeraBeer',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Archivo',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  WindowsButtons(true, false, true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
