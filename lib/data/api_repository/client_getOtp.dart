import 'package:dio/dio.dart';
import 'package:frahto/data/endpoints/endpoints.dart';

var dio = Dio();

void clientGetOtp(String phone_number) async {
  var response = await dio.post(Endpoints.frahtoApiv1 + Endpoints.getOtp,
      data: {"phone": "$phone_number"});

  print(response.statusMessage);
  print(response.data['code']);
}
