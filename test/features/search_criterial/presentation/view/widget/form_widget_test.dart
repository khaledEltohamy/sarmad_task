import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sarmad_task/src/utils/exports.dart';

class MockSearchCriteriaBloc
    extends MockBloc<SearchCriteriaEvent, SearchCriteriaState>
    implements SearchCriteriaBloc {}

void main() {
  late MockSearchCriteriaBloc mocSearchCriteriaBloc;

  setUp(() {
    mocSearchCriteriaBloc = MockSearchCriteriaBloc();
  });
  group("form fields widgets", () {
      final fNameTextField = find.byKey(const ValueKey(firstNameFormKey));
      final mNameTextField = find.byKey(const ValueKey(middeNameFormKey));
      final nationaltyFormKey = find.byKey(const ValueKey(nationaltyKey));
      final searchButton = find.byType(RawMaterialButton);
      final requiredNameValidtionErrorMassageText = find.text(requiredNameValidtionErrorMassage);
      final requiredNationaltyValidtionErrorMassageText = find.text(countryValidtionErrorMassage);
      final RequestPerson requestSuccessPerson = RequestPerson.successCase();
      final RequestPerson requestFieldPerson = RequestPerson.fieldNameCase();
      final RequestPerson requestFieldNatPerson = RequestPerson.fieldNatCase();

      formWidgetSteps(RequestPerson requestPerson , WidgetTester widgetTester)async {
      await widgetTester.pumpWidget( BlocProvider<SearchCriteriaBloc>(
        create: (context) => mocSearchCriteriaBloc,
        child:const MaterialApp(home: Scaffold(body: FormRequestWidget())),
      ));
       await widgetTester.enterText(fNameTextField, requestPerson.fname);
      await widgetTester.enterText(mNameTextField, requestPerson.mname);
      await widgetTester.enterText(nationaltyFormKey,requestPerson.nat);
      await widgetTester.tap(searchButton);
      await widgetTester.pump();// rebuild widget
      }
    testWidgets("system shall show text error massage when first name and middel name fileds are empty", (widgetTester) async {
      await formWidgetSteps(requestFieldPerson , widgetTester);
      expect(requiredNameValidtionErrorMassageText, findsOneWidget);
    });
    
      testWidgets("system shall show text error massage when nationalty field filed contauin fake country name", (widgetTester) async {
      await formWidgetSteps(requestFieldNatPerson, widgetTester);
      expect(requiredNationaltyValidtionErrorMassageText, findsOneWidget);
    });
  
    testWidgets("system shall not show text error massage when first name and middel name fileds are not empty and nationalty is correct country name", (widgetTester) async {
     await formWidgetSteps(requestSuccessPerson, widgetTester);
      expect(requiredNameValidtionErrorMassageText, findsNothing);
      expect(requiredNameValidtionErrorMassageText, findsNothing);
    });
  
  
  });
}
