import 'package:flutter/material.dart';
import 'package:flutter_mvvm_architechture/utils/utils.dart';
import 'package:flutter_mvvm_architechture/view_model/auth_view_model.dart';
import 'package:provider/provider.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Utils.toastmessage("Login Screen");
  }
  @override
  Widget build(BuildContext context) {
    final authViewModel=Provider.of<AuthViewModel>(context);
    return authViewModel.loading?CircularProgressIndicator():Scaffold(
        body: Column(
          children: [
            Text('Email'),
            SizedBox(height: 20,),
            Text('Password'),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
                Map dataBody={
                  "":"",
                };
                authViewModel.loginApi(dataBody,context);
            },
                child: Text('Press me')
            )
          ],
        ),
    );
  }
}
