part of 'search_criteria_bloc.dart';

sealed class SearchCriteriaState extends Equatable {
  const SearchCriteriaState();
}

final class SearchCriteriaInitial extends SearchCriteriaState {
  @override
  List<Object> get props => [];
}

final class SearchCriteriaLoading extends SearchCriteriaState {
  @override
  List<Object> get props => [];
}
final class SearchCriteriaSuccess extends SearchCriteriaState {
  final ResponsePerson responsePerson;
  
  const SearchCriteriaSuccess({required this.responsePerson});
  
  @override
  List<Object> get props => [responsePerson];
}
final class SearchCriteriaField extends SearchCriteriaState {
  final ErrorModel errorModel;

 const SearchCriteriaField({required this.errorModel});
  @override
  List<Object> get props => [errorModel];
}

