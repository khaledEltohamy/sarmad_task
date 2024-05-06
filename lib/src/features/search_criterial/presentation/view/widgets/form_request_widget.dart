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
  final formKey = GlobalKey<FormState>();
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
    return SizedBox(
      height: 250,
      child: Form(
        key: formKey,
        child: Column(
          children: [
            Expanded(child: TextFieldWidget.nameTextField( key: const  Key(firstNameFormKey), context: context, textEditingController: firstName, focusNode: firstNameFocusNode , hint: "First Name")),
            Expanded(child: TextFieldWidget.nameTextField(key:  const  Key(middeNameFormKey) , context: context, textEditingController: lastName, focusNode: lastNameFocusNode,hint: "Middel Name")),
            Expanded(child: TextFieldWidget.nameTextField(key:  const  Key(nationaltyKey), context: context, textEditingController: nationalty, focusNode: nationaltyFocusNode,hint: "Nationalty")),
            RawMaterialButton(
              key: const Key(searchFormKey),
              fillColor: ColorApp.primaryButtonColor(), child: const Text("Search"), onPressed: (){
              if (firstName.text.isEmpty && lastName.text.isEmpty){
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text(requiredNameValidtionErrorMassage)));
              }else {
                if (nationalty.text.isNotEmpty){
                if (Validations.isCountryName(nationalty.text)){
                 BlocProvider.of<SearchCriteriaBloc>(context).add(GetSearchCriteria(requestPerson: RequestPerson(fname: firstName.text, mname: lastName.text, nat: nationalty.text)));
                }else {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text(countryValidtionErrorMassage)));
                }
                }else {
                 BlocProvider.of<SearchCriteriaBloc>(context).add(GetSearchCriteria(requestPerson: RequestPerson(fname: firstName.text, mname: lastName.text, nat: nationalty.text)));
                }
                
              }
            } )
          ].toAddSeparator(element: const SizedBox(height: 12)).toList(),
        ),
      ),
    );
  }
}
