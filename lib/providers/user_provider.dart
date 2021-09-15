import 'package:career_app_flutter/models/user_model.dart';
import 'package:flutter/cupertino.dart';

class UserProvider with ChangeNotifier {
  UserModel _user;
  UserModel get user => _user;
  set user(UserModel newUser) {
    _user = newUser;
    notifyListeners();
  }
}
