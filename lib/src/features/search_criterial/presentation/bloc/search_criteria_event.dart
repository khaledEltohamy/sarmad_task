part of 'search_criteria_bloc.dart';

sealed class SearchCriteriaEvent extends Equatable {
  const SearchCriteriaEvent();

  @override
  List<Object> get props => [];
}

final class GetSearchCriteria extends SearchCriteriaEvent {
  final RequestPerson requestPerson;

  const GetSearchCriteria({required this.requestPerson});
}