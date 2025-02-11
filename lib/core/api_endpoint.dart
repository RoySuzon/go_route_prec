class ApiEndpoint {
  ApiEndpoint._();

  static String get _baseUrl => "http://172.26.192.1:3001";
  static String get products => "$_baseUrl/products";
  static String getUserData(int userId) => "$_baseUrl/user/$userId";
}
