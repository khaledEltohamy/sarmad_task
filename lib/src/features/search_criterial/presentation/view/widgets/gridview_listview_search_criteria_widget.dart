import 'package:sarmad_task/src/features/search_criterial/presentation/view/widgets/icon_change_view_widget.dart';
import 'package:sarmad_task/src/utils/exports.dart';

class GridviewListViewSearchCriteriaWidget extends StatefulWidget {
  const GridviewListViewSearchCriteriaWidget({super.key});

  @override
  State<GridviewListViewSearchCriteriaWidget> createState() => _GridviewListViewSearchCriteriaWidgetState();
}

class _GridviewListViewSearchCriteriaWidgetState extends State<GridviewListViewSearchCriteriaWidget> {
  @override
  Widget build(BuildContext context) {
   int counter =  context.watch<GridViewConvertListViewCubit>().numOfColmun;
      return Expanded(
       child: Column(
         children: [
            const IconChangeViewWidget(),
            counter == 1 ? 
            const ListCriterialSearchWidget() : 
            const GridViewCriterialSearchWidget(),
       ],),
     );
  }
}