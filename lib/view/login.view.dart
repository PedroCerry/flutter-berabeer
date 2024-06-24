import 'package:berabear/barrel/barrelPrinc.dart';
import 'package:berabear/controller/login.controller.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WindowBorder(
        width: 1,
        color: Colors.black,
        child: Login(),
      ),
    );
  }
}

// class Login extends StatefulWidget {
//   const Login({super.key});

//   @override
//   State<Login> createState() => _LoginState();
// }

class Login extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleBarWindows(),
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
            child: Column(
              children: [
                Imagem(),
                const LoginUser(),
                LoginSenha(),
                LoginMsgErro(),
                Button()
              ],
            ),
            //color: Color.fromRGBO(17, 17, 17, 1),
          ),
        )
      ],
    );
  }
}

class Imagem extends StatelessWidget {
  const Imagem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(60, 40, 60, 0),
      child: Image.asset('images/logoEmpresa.png'),
    );
  }
}

var habilitado = const OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(20)),
  borderSide: BorderSide(width: 1, color: Colors.grey),
);
var focado = const OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(20)),
  borderSide: BorderSide(width: 1, color: corPrincipal),
);
var erro = const OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(20)),
  borderSide: BorderSide(width: 1, color: corPrincipal),
);
var erroFocado = const OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(20)),
  borderSide: BorderSide(width: 1, color: corPrincipal),
);

class LoginUser extends GetView<LoginController> {
  const LoginUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(60, 40, 60, 0),
      child: Theme(
        data: ThemeData(
          textSelectionTheme: const TextSelectionThemeData(
            selectionColor: corPrimariaDegrade,
          ),
        ),
        child: TextField(
          autofocus: true,
          controller: controller.userInput,
          style: TextStyle(color: Colors.white),
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            enabledBorder: habilitado,
            focusedBorder: focado,
            errorBorder: erro,
            focusedErrorBorder: erroFocado,
            prefixIcon: const Icon(Icons.person),
            labelText: 'Usuário',
            labelStyle: const TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}

var senhaVisivel = false;

class LoginSenha extends StatefulWidget {
  const LoginSenha({Key? key}) : super(key: key);

  @override
  State<LoginSenha> createState() => LoginSenhaState();
}

class LoginSenhaState extends State<LoginSenha> {
  LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(60, 40, 60, 0),
      child: Theme(
        data: ThemeData(
          textSelectionTheme: const TextSelectionThemeData(
            selectionColor: corPrimariaDegrade,
          ),
        ),
        child: TextFormField(
          autofocus: true,
          controller: controller.senhaInput,
          style: TextStyle(color: Colors.white),
          cursorColor: Colors.grey,
          obscureText: !senhaVisivel,
          //obscureText: controller.senhaVisivel.isFalse,
          // focusNode: FocusNode(),
          decoration: InputDecoration(
            enabledBorder: habilitado,
            focusedBorder: focado,
            errorBorder: erro,
            focusedErrorBorder: erroFocado,
            prefixIcon: const Icon(Icons.lock),
            suffixIcon: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
              child: IconButton(
                  icon: Icon(
                      senhaVisivel ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      senhaVisivel = !senhaVisivel;
                    });
                  }),
            ),
            labelText: 'Senha',
            labelStyle: const TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}

var VarTeste = '';

class LoginMsgErro extends StatefulWidget {
  const LoginMsgErro({Key? key}) : super(key: key);

  @override
  _LoginMsgErroState createState() => _LoginMsgErroState();
}

class _LoginMsgErroState extends State<LoginMsgErro> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(60, 10, 60, 0),
        child: Text(
          VarTeste,
          style: TextStyle(color: Colors.amber),
        ));
  }

  void teste() => setState(() {
        VarTeste = 'teste';
      });
}

// class Teste extends StatefulWidget {
//   const Teste({Key? key}) : super(key: key);

//   @override
//   _TesteState createState() => _TesteState();
// }

// class _TesteState extends State<Teste> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.fromLTRB(60, 10, 60, 0),
//         child: Text(VarTeste));
//   }
// }

// class Button extends StatefulWidget {
//   const Button({Key? key}) : super(key: key);

//   @override
//   _ButtonState createState() => _ButtonState();
// }

class Button extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(60, 12, 60, 0),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: corPrincipal,
          padding: const EdgeInsets.fromLTRB(90, 16, 90, 16),
          textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          controller.tryToLogin();
          if (controller.Logar) {
            context.go('/menuPrinc');
          } else {
            //setState
            //LoginMsgErro.
            VarTeste = controller.MsgErro;
            print(controller.MsgErro);
          }
        }, //.go('/menuPrinc'),
        child: const Text('Entrar'),
      ),
    );
  }
}
