import '../../utils/exports.dart';

// ignore: must_be_immutable
class  ApiHelper extends Equatable {
  Dio dio = Dio(
    BaseOptions(
    responseType: ResponseType.json,
    receiveDataWhenStatusError: true,
    connectTimeout: const Duration(seconds:  30),
    receiveTimeout: const Duration(seconds:  30),
    headers: {
      "Accept": "application/json",
      "Content-Type": "application/json",
    },
    baseUrl: BASE_URL,
  ));
  
  @override
  List<Object?> get props => [dio];
}
