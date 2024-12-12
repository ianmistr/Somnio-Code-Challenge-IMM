class Response {
  Response({required this.data, required this.message, this.statusCode});
  List data;
  String message;
  int? statusCode;
}
