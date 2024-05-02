
import '../../../../../utils/exports.dart';

class IconChangeViewWidget extends StatelessWidget {
  const IconChangeViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          width: MediaQuery.sizeOf(context).width,
          height: 40,
          padding: const EdgeInsets.all(12),
          child: Align(alignment: Alignment.centerRight, 
          child:  IconButton(
            color: ColorApp.primaryButtonColor(),
            onPressed: ()=> BlocProvider.of<GridViewConvertListViewCubit>(context).changeView(),
           icon:const Icon(Icons.change_circle_outlined))),);
  }
}