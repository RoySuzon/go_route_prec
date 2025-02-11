class ApiResponse<T> {
  final int statusCode;
  final String message;
  final T? data;
  final String? error;

  ApiResponse({
    required this.statusCode,
    required this.message,
    this.data,
    this.error,
  });

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic json) fromJsonT,
  ) {
    return ApiResponse<T>(
      statusCode: json['statusCode'],
      message: json['message'],
      data: json['data'] != null ? fromJsonT(json['data']) : null,
      error: json['error'],
    );
  }

  Map<String, dynamic> toJson(Map<String, dynamic> Function(T? data) toJsonT) {
    return {
      'statusCode': statusCode,
      'message': message,
      'data': data != null ? toJsonT(data) : null,
      'error': error,
    };
  }
}
