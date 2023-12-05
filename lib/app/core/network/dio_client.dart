import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import '/app/core/network/interceptors/dio_interceptors.dart';

@singleton
class DioClient {
  final dio = Dio();

  addInterceptors(InterceptorsWrapper interceptorsWrapper) {
    dio.interceptors.add(interceptorsWrapper);
  }
}

abstract class RestService {
  late DioClient dioClient;

  RestService() {
    this.dioClient = GetIt.instance<DioClient>();
    this.dioClient.addInterceptors(RestaurantInterceptors());
  }

  getDioClient() {
    return dioClient.dio;
  }
}
