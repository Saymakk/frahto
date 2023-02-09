import 'package:dio/dio.dart';
import 'package:frahto/data/endpoints/endpoints.dart';
import 'package:hive_flutter/adapters.dart';

var dio = Dio();

void clientRegister() async {
  var boxCD = Hive.box('db').get('company_data');
  var boxUD = Hive.box('db').get('user_data');
  var response =
      await dio.post(Endpoints.frahtoApiv1 + Endpoints.clientRegisterPost,
          data: {
            "bin": boxCD['bin'],
            "company_name": boxCD['company_name'],
            "company_phone": boxCD['phone_number'],
            'iin': boxUD['iin'],
            'name': boxUD['name'],
            'last_name': boxUD['last_name'],
            "user_phone": boxUD['last_name']
          });
  Future.delayed(Duration(seconds: 3));
  print(response.statusCode);
  print(response.data);
}
