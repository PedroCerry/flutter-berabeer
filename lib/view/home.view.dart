import 'package:berabear/barrel/barrelPrinc.dart';
import 'package:berabear/widgets_commons/w_title_bar_windows.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: WindowBorder(
          width: 1,
          color: Colors.black,
          child: Home(),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return SizedBox(
      width: screenWidth,
      height: screenHeight,
      child: Column(
        children: [
          titleBarWindows(true, true, true),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [corPrimariaDegrade, corSecundariaDegrade],
                    stops: [0.0, 1.0]),
              ),
              constraints: const BoxConstraints.expand(),
              /* child: Column(
                children: [Imagem(), const LoginUser(), LoginSenha(), Button()],
              ),*/
              //color: Color.fromRGBO(17, 17, 17, 1),
            ),
          )
        ],
      ),
    );
  }
}
