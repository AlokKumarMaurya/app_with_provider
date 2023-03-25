import 'dart:convert';
import 'dart:io';

import 'package:app_with_provider/data/app_exceptios.dart';
import 'package:app_with_provider/data/network/baseApiService.dart';
import 'package:http/http.dart';

class NetworkApiService extends BaseApiService {
  @override
  Future getGetApiResponse({required String url}) async {
    try {
      Response response = await get(Uri.parse(url));
      return returnResponse(response: response);
    } on SocketException {
      throw FetchDataException("No internet connection");
    } catch (e) {
      throw UnKnownException(e.toString());
    } finally {}
  }

  @override
  Future getPostApiResponse({required String url,required dynamic body}) async {
    try {
      Response response =await post(Uri.parse(url),body: body);
      return returnResponse(response: response);
    } on SocketException {
      throw FetchDataException("No internet connection");
    } catch (e) {
      throw UnKnownException(e.toString());
    } finally {}
  }

  dynamic returnResponse({required Response response}) {
    switch (response.statusCode) {
      case 200:
        dynamic res = jsonDecode(response.body);
        return res;
      case 400:
        throw UnAuthorizeException("You are unauthorized ");
      case 500:
        throw UnKnownException("Internal server error pls try again later");
      default:
        throw FetchDataException(
            "Some error occurred with status code ${response.statusCode}");
    }
  }
}
