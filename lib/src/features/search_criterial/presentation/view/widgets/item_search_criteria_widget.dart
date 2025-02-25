import 'package:sarmad_task/src/utils/exports.dart';

// ignore: must_be_immutable
class ItemSuggestedWidget extends StatelessWidget {
  final PersonModel person;
  ItemSuggestedWidget({
    super.key,
    required this.person
  });
 StringHelper stringHelper = StringHelper();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      padding:const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(flex: 3, child: Text(person.name , style: const TextStyle(fontSize: 12 , fontWeight: FontWeight.w500))),
            Flexible(flex: 1, child: Text("Score: ${person.score}", style:  TextStyle(fontSize: 12 , fontWeight: FontWeight.w600 , color: ColorApp.primaryButtonColor()))),
          ]),
         Expanded(child: Text(stringHelper.convertStringList(person.placeOfBirth) ,overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 12 , fontWeight: FontWeight.w500))),
         Text("Nationality: ${person.nationality}", style:  TextStyle(fontSize: 12 ,overflow: TextOverflow.ellipsis, fontWeight: FontWeight.w600 , color: ColorApp.primaryButtonColor())),

         Expanded(child: Text(stringHelper.convertArrayList(person.descriptions) ,overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 10 , fontWeight: FontWeight.w300))),
         Divider(color: ColorApp.primaryColor()),
   
      ].toAddSeparator(element: const SizedBox(height: 2)).toList()));
  }
}
