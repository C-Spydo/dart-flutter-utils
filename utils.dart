import 'package:fluttertoast/fluttertoast.dart';
import 'package:validators/validators.dart';

class Utils {
  void showToast(var mssg) {
    Fluttertoast.showToast(
      msg: mssg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIos: 1,
    );
  }

  void showLongToast(var mssg) {
    Fluttertoast.showToast(
      msg: mssg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIos: 1,
    );
  }

  String validEmail(String value) {
    if (value.isEmpty) {
      // The form is empty
      return "Email cannot be empty";
    }
    // This is just a regular expression for email addresses
    String p = "[a-zA-Z0-9\+\.\_\%\-\+]{1,256}" +
        "\\@" +
        "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}" +
        "(" +
        "\\." +
        "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}" +
        ")+";
    RegExp regExp = new RegExp(p);

    if (!regExp.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  String validPassword(String value) {
    if (value.isEmpty) {
      return "Password cannot be empty";
    } else if (value.length < 6) {
      return "Password must be at least 6 Characters";
    } else {
      return null;
    }
  }

  String validText(String value) {
    if (value.isEmpty) {
      return "Enter text";
    } else {
      return null;
    }
  }

  String validCreditCard(String value) {
    if (isCreditCard(value)) {
      return null;
    } else {
      return "Not a valid card number";
    }
  }
}
