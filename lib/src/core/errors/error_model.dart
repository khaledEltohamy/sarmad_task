import '../../utils/exports.dart';
import 'faliure.dart';

class ErrorModel {
  final String title;
  final String contant;

  ErrorModel({required this.title, required this.contant});

  factory ErrorModel.convertFailureError(Failure failure) {
    switch (failure.runtimeType) {
      case FailureService _:
        return ErrorModel(
            title: SERVER_ERORR, contant: "something went wrong please try agin later");
      case FailureServiceWithResponse _:
        return ErrorModel(
            title: "Error",
            contant: failure.props[0].toString());
      case FailureOffline _:
        return ErrorModel(
            title: OFFLINE_ERROR,
            contant:
                "You are offline please check your network and try agin.");
      default:
        return ErrorModel(
            title: "Error",
            contant: "something went wrong please try agin later");
    }
  }
}

