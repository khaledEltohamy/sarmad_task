
import '../../../../utils/exports.dart';

part 'search_criteria_event.dart';
part 'search_criteria_state.dart';

class SearchCriteriaBloc extends Bloc<SearchCriteriaEvent, SearchCriteriaState> {
  final SearchCriteriaUseCase useCase;
  SearchCriteriaBloc(this.useCase) : super(SearchCriteriaInitial()) {
  on<GetSearchCriteria>((event, emit) => _handelSuggestedRequestState(event, emit));
  }
  
  _handelSuggestedRequestState(GetSearchCriteria event, Emitter<SearchCriteriaState> emit) async{
  emit(SearchCriteriaLoading());
   final result = await useCase.getSearchCriteria(event.requestPerson);
   result.fold(
   (failure) => emit(SearchCriteriaField(errorModel: ErrorModel.convertFailureError(failure))), 
   (response) => emit(SearchCriteriaSuccess(responsePerson: response)));
  }
}
