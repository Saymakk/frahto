import 'package:dio/dio.dart';
import 'package:frahto/data/endpoints/endpoints.dart';

var dio = Dio();

void clientLogin() async {
  var response = await dio.post(
      Endpoints.frahtoApiv1 + Endpoints.clientLoginPost,
      data: {"phone": "423432424", "password": "900334"});

  if (response.statusCode == 401) {
    print(response.statusMessage);
    print(response.data);
  }
}
