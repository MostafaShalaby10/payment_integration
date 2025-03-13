import 'package:dio/dio.dart';
import 'package:payment/core/api_service/api_constants.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<Response> post({required Map data}) async {
    var response = await _dio.post(
      ApiConstants.createPaymentIntentURL,
      data: data,
      options: Options(
        contentType: Headers.formUrlEncodedContentType,
        headers: {"Authorization": "Bearer ${ApiConstants.userToken}"},
      ),
    );
    return response;
  }
}
/*

*!  De

 */