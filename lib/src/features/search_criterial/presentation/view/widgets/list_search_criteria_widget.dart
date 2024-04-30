
import '../../../../../utils/exports.dart';

class ListCriterialSearchWidget extends StatelessWidget {
  const ListCriterialSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCriteriaBloc, SearchCriteriaState>(
      builder: (context, state) {
        if (state is SearchCriteriaSuccess){
        var personList = state.responsePerson.persons;
          return 
          personList.isEmpty ? 
         const Center(child: Text("Not Found"))
          :
          Expanded(
            child: ListView.builder(
               itemCount: personList.length,
              itemBuilder: (c , index)=> ItemSuggestedWidget(person: personList[index])),
          );
        }
        if (state is SearchCriteriaLoading){
          return const Center(child: CircularProgressIndicator());
        }
        if (state is SearchCriteriaField){
          return Center(child: Text(state.errorModel.contant));
        }else {
         return  Container();
        }
      },
    );
  }
}
