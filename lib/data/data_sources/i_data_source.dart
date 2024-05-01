enum RequestType { create, read, update, delete }

abstract class DataSource {
  Future<T?> request<T>({
    required RequestType requestType,
    Object? body,
  });
}
