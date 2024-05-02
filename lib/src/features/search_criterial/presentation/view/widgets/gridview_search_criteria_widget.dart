
import 'package:sarmad_task/src/features/search_criterial/presentation/view/widgets/icon_change_view_widget.dart';

import '../../../../../utils/exports.dart';

class GridViewCriterialSearchWidget extends StatelessWidget {
  const GridViewCriterialSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCriteriaBloc, SearchCriteriaState>(
      builder: (context, state) {
        if (state is SearchCriteriaSuccess){
        var personList = state.responsePerson.persons;
        int counter =  context.watch<GridViewConvertListViewCubit>().numOfColmun;
          
          return 
          personList.isEmpty ? 
         const Center(child: Text("Not Found"))
          :
          Expanded(
            child: Column(
          children: [
           const IconChangeViewWidget(),
            Expanded(
              child: GridView.builder(
                   itemCount: personList.length,
                  itemBuilder: (c , index)=> ItemSuggestedWidget(person: personList[index]), 
                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: counter, // number of items in each row
                  mainAxisSpacing: 0.0, // spacing between rows
                  childAspectRatio: counter == 1 ? 2 : 1,
                  crossAxisSpacing: 0.0, // spacing between columns
                ),),
            ),
          ],
            ),
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
