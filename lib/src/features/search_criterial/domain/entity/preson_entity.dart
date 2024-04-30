import 'package:sarmad_task/src/utils/exports.dart';

class PersonEntity extends Equatable {
  final String name, nationality;
  final List<dynamic> placeOfBirth;
  final List<dynamic> descriptions;
  final int score;
const PersonEntity({required this.name, required this.nationality, required this.placeOfBirth, required this.descriptions, required this.score});
 

  @override
  List<Object?> get props => [];
}