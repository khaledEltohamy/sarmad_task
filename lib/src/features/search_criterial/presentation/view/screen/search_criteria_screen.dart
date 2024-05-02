import 'package:sarmad_task/src/features/search_criterial/presentation/view/widgets/gridview_listview_search_criteria_widget.dart';

import '../../../../../utils/exports.dart';

class SearchCriterialscreen extends StatefulWidget {
  const SearchCriterialscreen({super.key});

  @override
  State<SearchCriterialscreen> createState() => _SearchCriterialscreenState();
}

class _SearchCriterialscreenState extends State<SearchCriterialscreen> {
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          const FormRequestWidget(),
           _getFormFieldFlavor(),
         
        ].toAddSeparator(element: const SizedBox(height: 24)).toList()),
      )
    );
  }

 Widget  _getFormFieldFlavor(){
    switch(AppConfig.flavor){
      case Flavor.dev:
      return const  GridviewListViewSearchCriteriaWidget();
      case Flavor.stage:
      return   const GridViewCriterialSearchWidget();
      case Flavor.production:
      return  const ListCriterialSearchWidget();
      default:
     return  const ListCriterialSearchWidget();
    }
  }
}