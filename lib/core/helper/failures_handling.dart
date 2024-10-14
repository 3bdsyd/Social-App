import 'package:dio/dio.dart';

// A class to represent failure messages in the application
class Failures {
  final String errMessage; // A string to hold the error message

  // Constructor to initialize the errMessage
  Failures({required this.errMessage});
}

// A subclass of Failures specifically for server-related failures
class FailuresServer extends Failures {
  // Constructor that uses the superclass constructor
  FailuresServer({required super.errMessage});

  // Factory method to create FailuresServer instances from DioExceptionType
  factory FailuresServer.fromDioException({
    required DioExceptionType exType, // The type of Dio exception
  }) {
    // Using a switch statement to map different exception types to error messages
    switch (exType) {
      case DioExceptionType.connectionTimeout:
        // Handle connection timeout
        return FailuresServer(errMessage: 'connection Timeout');
      case DioExceptionType.sendTimeout:
        // Handle send timeout
        return FailuresServer(errMessage: 'send Time out');
      case DioExceptionType.receiveTimeout:
        // Handle receive timeout
        return FailuresServer(errMessage: 'receive Time out');
      case DioExceptionType.badCertificate:
        // Handle bad certificate error
        return FailuresServer(errMessage: 'bad Certificate');
      case DioExceptionType.badResponse:
        // Handle bad response (e.g., 404 Not Found)
        return FailuresServer(errMessage: 'Not Found!');
      case DioExceptionType.cancel:
        // Handle request cancellation
        return FailuresServer(errMessage: 'cancel');
      case DioExceptionType.connectionError:
        // Handle general connection error
        return FailuresServer(errMessage: 'connection Error');
      case DioExceptionType.unknown:
        // Handle unknown errors
        return FailuresServer(errMessage: 'unknown');
    }
  }
}
