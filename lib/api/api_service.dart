import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../utils/app_config.dart';

class ApiService {
  late Dio _dio;
  String tag = "API call :";
  CancelToken? _cancelToken;

  static final Dio mDio = Dio();

  static final ApiService _instance = ApiService._internal();

  factory ApiService() {
    mDio.options.contentType = 'application/json';
    return _instance;
  }

  ApiService._internal() {
    _dio = initApiServiceDio();
  }

  Dio initApiServiceDio() {
    _cancelToken = CancelToken();
    final baseOption = BaseOptions(
      connectTimeout: 30 * 1000,
      receiveTimeout: 30 * 1000,
      baseUrl: apiBaseUrl,
      contentType: 'application/json',
      headers: {},
    );
    mDio.options = baseOption;
    final mInterceptorsWrapper = InterceptorsWrapper(
      onRequest: (options, handler) {
        debugPrint(
            "$tag ${options.method} "
            "${options.baseUrl.toString() + options.path}",
            wrapWidth: 1024);

        debugPrint("$tag ${options.headers.toString()}", wrapWidth: 1024);
        if (options.queryParameters != null) {
          debugPrint("$tag ${options.queryParameters.toString()}",
              wrapWidth: 1024);
        }
        debugPrint("$tag ${options.data.toString()}", wrapWidth: 1024);
        return handler.next(options);
      },
      onResponse: (response, handler) async {
        debugPrint("Code  ${response.statusCode.toString()}", wrapWidth: 1024);
        debugPrint("Response ${response.toString()}", wrapWidth: 1024);
        return handler.next(response); //
      },
      onError: (e, handler) async {
        debugPrint("$tag ${e.error.toString()}", wrapWidth: 1024);
        debugPrint("$tag ${e.response.toString()}", wrapWidth: 1024);
        return handler.next(e);
      },
    );
    mDio.interceptors.add(mInterceptorsWrapper);
    return mDio;
  }

  void cancelRequests({CancelToken? cancelToken}) {
    cancelToken == null
        ? _cancelToken?.cancel('Cancelled')
        : cancelToken.cancel();
  }

  Future<Response> get(
    String endUrl, {
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return await (_dio.get(
      endUrl,
      queryParameters: params,
      cancelToken: cancelToken ?? _cancelToken,
      options: options,
    )).catchError((e) {
      throw e;
    });
  }

  Future<Response> post(
    String endUrl, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      return await (_dio.post(
        endUrl,
        data: data,
        queryParameters: params,
        cancelToken: cancelToken ?? _cancelToken,
        options: options,
      ));
    } on DioError {
      rethrow;
    }
  }

  Future<Response> put(
    String endUrl, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      return await (_dio.put(
        endUrl,
        data: data,
        queryParameters: params,
        cancelToken: cancelToken ?? _cancelToken,
        options: options,
      ));
    } on DioError {
      rethrow;
    }
  }

  Future<Response> delete(
    String endUrl, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      return await (_dio.delete(
        endUrl,
        data: data,
        queryParameters: params,
        cancelToken: cancelToken ?? _cancelToken,
        options: options,
      ));
    } on DioError {
      rethrow;
    }
  }
}
