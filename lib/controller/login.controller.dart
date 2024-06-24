import 'package:berabear/barrel/barrelPrinc.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController userInput = TextEditingController();
  TextEditingController senhaInput = TextEditingController();
  static const user = 'admin';
  static const senha = '123';

  late String MsgErro;
  late bool Logar;

  tryToLogin() {
    Logar = false;
    switch (userInput.text) {
      // case user:
      // Logar = senhaValida();
      case '':
        MsgErro = 'Insira um usuário';
        return false;
      default:
        // MsgErro = 'Usuário inválido';
        Logar = senhaValida();
    }
  }

  bool senhaValida() {
    switch (senhaInput.text) {
      case senha:
        return true;
      case '':
        MsgErro = 'Insira uma senha';
        return false;
      default:
        MsgErro = 'Usuário ou senha inválido!';
        return false;
    }
  }
}
