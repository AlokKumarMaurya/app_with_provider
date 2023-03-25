
import 'package:flutter/foundation.dart';

import '../repository/authRepository.dart';

class LoginViewModal extends ChangeNotifier{

  //use this provider in the loginView
  void login(){
    var temp=AuthRepository().login();
  }

}