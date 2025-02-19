import 'package:dio/dio.dart';
import 'package:link/domain/models/user.dart';

class LoginResponse {
  final String token;
  final User user;

  LoginResponse({required this.token, required this.user});

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      token: json['token'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );
  }
}

class ApiService {
  static final ApiService _instance = ApiService._internal();
  late final Dio _dio;
  
  // Factory constructor to return the same instance
  factory ApiService() {
    return _instance;
  }

  // Private constructor
  ApiService._internal() {
    _dio = Dio();
    _dio.options.baseUrl = 'https://292b1f98-f440-4fe5-bcba-8c9392ffd6c3.mock.pstmn.io';
    _dio.options.connectTimeout = const Duration(seconds: 5);
    _dio.options.receiveTimeout = const Duration(seconds: 3);
  }

  Future<LoginResponse> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _dio.post(
        '/login',
        data: {
          'email': email,
          'password': password,
        },
      );
      print(response.data);

      if (response.statusCode == 200) {
        return LoginResponse.fromJson(response.data);
      } else {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
          message: 'Login failed',
        );
      }
    } on DioException catch (e) {
      throw Exception('Login failed: ${e.message}');
    }
  }
} 