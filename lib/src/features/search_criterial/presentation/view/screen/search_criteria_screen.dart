

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
          _getFormFieldFlavor(),
          const ListCriterialSearchWidget(),
        ].toAddSeparator(element: const SizedBox(height: 24)).toList()),
      )
    );
  }

 Widget  _getFormFieldFlavor(){
    switch(AppConfig.flavor){
      case Flavor.dev:
      return const  FormRequestWidget();
      case Flavor.stage:
      return const  FormRequestWidget();
      case Flavor.production:
      return const  FormRequestWidget();
      default:
     return const  FormRequestWidget();
    }
  }
}