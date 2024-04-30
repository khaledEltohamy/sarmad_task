
import '../../../../../utils/exports.dart';

class FormRequestWidget extends StatefulWidget {
  const FormRequestWidget({super.key});

  @override
  State<FormRequestWidget> createState() => _FormRequestWidgetState();
}

class _FormRequestWidgetState extends State<FormRequestWidget> {
  late TextEditingController firstName;
  late TextEditingController lastName;
  late TextEditingController nationalty;
  late FocusNode firstNameFocusNode;
  late FocusNode lastNameFocusNode;
  late FocusNode nationaltyFocusNode;
  @override
  void initState() {
    firstName = TextEditingController();
    lastName = TextEditingController();
    nationalty = TextEditingController();
    firstNameFocusNode= FocusNode();
    lastNameFocusNode= FocusNode();
    nationaltyFocusNode = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldWidget.nameTextField( key:const Key(firstNameFormKey), context: context, textEditingController: firstName, focusNode: firstNameFocusNode , hint: "First Name"),
        TextFieldWidget.nameTextField(key:const  Key(middeNameFormKey) , context: context, textEditingController: lastName, focusNode: lastNameFocusNode,hint: "Middel Name"),
        TextFieldWidget.nameTextField(key:const  Key(nationaltyKey), context: context, textEditingController: nationalty, focusNode: nationaltyFocusNode,hint: "Nationalty"),
        RawMaterialButton(fillColor: ColorApp.primaryButtonColor(), child: const Text("Search"), onPressed: (){
          if (firstName.text.isEmpty && lastName.text.isEmpty){
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("One of this blank fields is required (First Name , Middel Name) to pass")));
          }else {
            BlocProvider.of<SearchCriteriaBloc>(context).add(GetSearchCriteria(requestPerson: RequestPerson(fname: firstName.text, mname: lastName.text, nat: nationalty.text)));
          }
        } )
      ].toAddSeparator(element: const SizedBox(height: 12)).toList(),
    );
  }
}