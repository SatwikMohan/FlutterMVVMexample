import 'package:flutter/material.dart';
import 'package:flutter_mvvm_architechture/utils/routes/routes.dart';
import 'package:flutter_mvvm_architechture/utils/routes/routes_names.dart';
import 'package:flutter_mvvm_architechture/view/home.dart';
import 'package:flutter_mvvm_architechture/view_model/auth_view_model.dart';
import 'package:flutter_mvvm_architechture/view_model/user_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_){
            return AuthViewModel();
        }),
        ChangeNotifierProvider(create: (_){
          return UserViewModel();
        }),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: RoutesNames.login,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
