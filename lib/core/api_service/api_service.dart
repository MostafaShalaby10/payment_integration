import 'package:dio/dio.dart';
import 'package:payment/core/api_service/api_constants.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<Response> createPaymentIntentPostMethod({required Map data , required String userToken}) async {
    var response = await _dio.post(
      ApiConstants.createPaymentIntentURL,
      data: data,
      options: Options(
        contentType: Headers.formUrlEncodedContentType,
        headers: {"Authorization": "Bearer $userToken"},
      ),
    );
    return response;
  }
}
