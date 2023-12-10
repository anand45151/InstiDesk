import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:instidesk/main_screen.dart';
import 'package:instidesk/repository/auth_repository.dart';
import 'package:instidesk/utils/shared_prefs.dart';
import 'package:instidesk/utils/utils.dart';

class AuthProvider with ChangeNotifier {
  final _prefs = SharedPrefs.instance();
  final _myRepo = AuthRepository();

  bool _signInLoading = false;
  bool get signInLoading => _signInLoading;

  setSignInLoading(bool value) {
    _signInLoading = value;
    notifyListeners();
  }

  Future<void> loginApi(dynamic data, BuildContext context) async {
    setSignInLoading(true);

    _myRepo.loginApi(data, context).then((value) {
      setSignInLoading(false);
      _prefs.setToken(value['token']);

      Utils.snackBar('login successfull', context);
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const MainScreen(),
      ));
      if (kDebugMode) {
        print('login-------${value.toString()}');
      }
    }).onError((error, stackTrace) {
      setSignInLoading(false);
      Utils.flushBarErrorMessage(error.toString(), context);
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }
}
