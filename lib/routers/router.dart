import 'package:berabear/barrel/barrelPrinc.dart';
import 'package:berabear/bindigs/login.bindigs.dart';
import 'package:berabear/view/home.view.dart';
import 'package:berabear/view/login.view.dart';
import 'package:go_router/go_router.dart';

class BuildRouters extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialBinding: LoginBindings(),
        debugShowCheckedModeBanner: false,
        home: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: router,
        ));
  }

  final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => LoginView(), routes: [
        GoRoute(
          path: 'menuPrinc',
          builder: (context, state) => HomeView(),
        )
      ]),
    ],
  );
}
