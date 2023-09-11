import 'package:flutter_mvvm_architechture/data/network/BaseApiService.dart';
import 'package:flutter_mvvm_architechture/data/network/NetworkApiService.dart';
import 'package:flutter_mvvm_architechture/res/app_url.dart';

class AuthRepository{
  BaseApiService baseApiService=NetworkApiService();
  Future<dynamic> loginApi(dynamic data) async{
    try{
      dynamic response=await baseApiService.getPostApiResponse(AppUrl.loginEndPoint, {}, data);
      return response;
    }catch(e){
      throw e;
    }
  }
  Future<dynamic> registerApi(dynamic data) async{
    try{
      dynamic response=await baseApiService.getPostApiResponse(AppUrl.signupEndPoint, {}, data);
      return response;
    }catch(e){
      throw e;
    }
  }
}