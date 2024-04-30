import 'package:mockito/annotations.dart';
import 'package:sarmad_task/src/utils/exports.dart';

@GenerateMocks(
  [
   BaseRepository,
   BaseDataSource,
   SearchCriteriaUseCase,
   NetWorkInfo,
   ApiHelper
  ],
)

void main() {}