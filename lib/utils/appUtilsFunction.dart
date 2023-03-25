import 'package:flutter/cupertino.dart';

class AppUtils {


  //to change app focus on a text field
  void changeFocus(
      {required BuildContext context, required FocusNode currentFocus, required FocusNode nextFocus}){
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
}