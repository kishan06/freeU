class ResponseData<T> {
  ResponseData(this.message, this.status, {this.data});

  final T? data;
  final String message;
  final ResponseStatus status;

  @override
  String toString() => message;
}

enum ResponseStatus {
  SUCCESS,

  FAILED,

  PRIVATE,
}
