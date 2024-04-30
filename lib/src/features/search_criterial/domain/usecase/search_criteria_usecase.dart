import 'package:dartz/dartz.dart';
import '../../../../utils/exports.dart';


class SearchCriteriaUseCase {
  final BaseRepository baseRepository;

  SearchCriteriaUseCase(this.baseRepository);

  Future<Either<Failure, ResponsePerson>> getSearchCriteria(RequestPerson person) async =>
      baseRepository.getSearchCriteria(person);
}
