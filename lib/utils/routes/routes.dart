import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm_architechture/utils/routes/routes_names.dart';
import 'package:flutter_mvvm_architechture/view/home.dart';
import 'package:flutter_mvvm_architechture/view/login_screen.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
      switch(settings.name){
        case RoutesNames.home:
          return MaterialPageRoute(builder: (BuildContext context)=> Home());
        case RoutesNames.login:
          return MaterialPageRoute(builder: (BuildContext context)=> LoginScreen());
        default:
          return MaterialPageRoute(builder: (BuildContext context){
            return Scaffold(
              body: Center(
                child: Text(
                  'No screen found',
                ),
              ),
            );
          });
      }
  }
}