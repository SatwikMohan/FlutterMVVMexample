import 'dart:convert';
import 'dart:io';

import 'package:flutter_mvvm_architechture/data/app_exceptions.dart';
import 'package:flutter_mvvm_architechture/data/network/BaseApiService.dart';
import 'package:http/http.dart' as http;
class NetworkApiService extends BaseApiService{
  @override
  Future getGetApiResponse(String url,dynamic headers) async {
    final responseJson;
      try{
        final response=await http.get(Uri.parse(url),headers: headers).timeout(Duration(seconds: 20));
        responseJson=returnResponse(response);
      }on SocketException{
        throw FetchDataException('No internet connection');
      }
      return responseJson;
  }

  @override
  Future getPostApiResponse(String url,dynamic headers,dynamic dataBody) async {
    final responseJson;
    try{
      final response=await http.post(Uri.parse(url),headers: headers,body: dataBody).timeout(Duration(seconds: 20));
      responseJson=returnResponse(response);
    }on SocketException{
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response){
    switch(response.statusCode){
      case 200:
        dynamic responseJson=jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 404:
        throw UnauthorisedException(response.body.toString());
      default:
        throw FetchDataException("An error has occurred with status code : "+response.statusCode.toString());
    }
  }

}