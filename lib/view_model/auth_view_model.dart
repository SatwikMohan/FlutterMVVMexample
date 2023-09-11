import 'package:flutter/cupertino.dart';
import 'package:flutter_mvvm_architechture/utils/routes/routes_names.dart';

import '../repository/auth_repository.dart';

class AuthViewModel with ChangeNotifier{
  final myApi=AuthRepository();
  bool _loading=false;
  bool get loading => _loading;
  setLoading(bool value){
    _loading=value;
    notifyListeners();
  }
  Future<void> loginApi(dynamic dataBody,BuildContext context) async{
    setLoading(true);
      myApi.loginApi(dataBody).then((value) {
      setLoading(false);
      Navigator.pushNamed(context, RoutesNames.home);
      }).onError((error, stackTrace){
        setLoading(false);
      });
  }
}