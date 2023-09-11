class UserModel{
  String? token;
  UserModel({this.token});
  UserModel.fromJson(Map<String,dynamic> json){
    token=json['token'];
  }
  Map<String,dynamic> toJson(){
    Map<String,dynamic> data=new Map();
    data['token']=this.token;
    return data;
  }
}