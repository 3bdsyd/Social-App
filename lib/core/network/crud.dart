import 'package:dartz/dartz.dart';
import 'package:social_app/core/utils/app_import.dart';

class Crud {
  final Dio _dio = Dio(); // Creating an instance of Dio for HTTP requests

  // Method for sending a GET request
  Future<Either<Failures, Map<String, dynamic>>> get({
    required final String url, // URL for the GET request
  }) async {
    try {
      // Setting the content type to JSON for the request headers
      _dio.options.headers['content-Type'] = 'application/json';

      // Sending the GET request
      final Response response = await _dio.get(url);

      // Decoding the response to a Map
      final Map<String, dynamic> responseData = jsonDecode(
        response.toString(),
      );

      return right(
          responseData); // Return the successful response wrapped in the right side of Either
    } catch (e) {
      // Handling exceptions that occur during the request
      if (e is DioException) {
        // Check for a 400 status code (bad request)
        if (e.response?.statusCode == 400) {
          Map response = jsonDecode(e.response.toString());
          return left(Failures(
              errMessage: response['message'])); // Return error message
        }
        // Return error based on DioException type
        return left(FailuresServer.fromDioException(exType: e.type));
      }
      // Return a generic error message for other exceptions
      return left(Failures(errMessage: 'A sudden error occurred, try again'));
    }
  }

  // Method for sending a POST request
  Future<Either<Failures, Map<String, dynamic>>> post({
    required final String url, // URL for the POST request
    required final Map<String, dynamic> body, // Body of the POST request
  }) async {
    try {
      // Setting the content type to JSON for the request headers
      _dio.options.headers['content-Type'] = 'application/json';

      // Sending the POST request
      final response = await _dio.post(url, data: body);

      // Decoding the response to a Map
      final Map<String, dynamic> responseData = jsonDecode(response.toString());

      return right(
          responseData); // Return the successful response wrapped in the right side of Either
    } catch (e) {
      // Handling exceptions that occur during the request
      if (e is DioException) {
        // Check for a 400 status code (bad request)
        if (e.response?.statusCode == 400) {
          Map response = jsonDecode(e.response.toString());
          return left(Failures(
              errMessage: response['message'])); // Return error message
        }
        // Return error based on DioException type
        return left(FailuresServer.fromDioException(exType: e.type));
      }
      // Return a generic error message for other exceptions
      return left(Failures(errMessage: 'A sudden error occurred, try again'));
    }
  }

  // Method for sending a PUT request
  Future<Either<Failures, Map<String, dynamic>>> put({
    required final String url, // URL for the PUT request
    required final Map<String, dynamic> body, // Body of the PUT request
  }) async {
    try {
      // Setting the content type to JSON for the request headers
      _dio.options.headers['content-Type'] = 'application/json';

      // Sending the PUT request
      final response = await _dio.put(url, data: body);

      // Decoding the response to a Map
      final Map<String, dynamic> responseData = jsonDecode(response.toString());

      return right(
          responseData); // Return the successful response wrapped in the right side of Either
    } catch (e) {
      // Handling exceptions that occur during the request
      if (e is DioException) {
        // Check for a 400 status code (bad request)
        if (e.response?.statusCode == 400) {
          Map response = jsonDecode(e.response.toString());
          return left(Failures(
              errMessage: response['message'])); // Return error message
        }
        // Return error based on DioException type
        return left(FailuresServer.fromDioException(exType: e.type));
      }
      // Return a generic error message for other exceptions
      return left(Failures(errMessage: 'A sudden error occurred, try again'));
    }
  }

  // Method for sending a DELETE request
  Future<Either<Failures, Map<String, dynamic>>> delete({
    required final String url, // URL for the DELETE request
  }) async {
    try {
      // Setting the content type to JSON for the request headers
      _dio.options.headers['content-Type'] = 'application/json';

      // Sending the DELETE request
      final Response response = await _dio.delete(url);

      // Decoding the response to a Map
      final Map<String, dynamic> responseData = jsonDecode(
        response.toString(),
      );

      return right(
          responseData); // Return the successful response wrapped in the right side of Either
    } catch (e) {
      // Handling exceptions that occur during the request
      if (e is DioException) {
        // Check for a 400 status code (bad request)
        if (e.response?.statusCode == 400) {
          Map response = jsonDecode(e.response.toString());
          return left(Failures(
              errMessage: response['message'])); // Return error message
        }
        // Return error based on DioException type
        return left(FailuresServer.fromDioException(exType: e.type));
      }
      // Return a generic error message for other exceptions
      return left(Failures(errMessage: 'A sudden error occurred, try again'));
    }
  }
}
