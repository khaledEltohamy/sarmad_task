# sarmad_task

A Saramad Task Flutter .

## Getting Started

### Explanation of solutions for presentation and use flavors
Create a mobile app using Flutter (BLOC or Cubit) for the search criteria and present the result in a smart
and creative way (Grid View & List View) :

Falvors was used to produce more than one version that allows more than one solution to the problem, as:

When using debug: we can change the way results are displayed between listview and gridview.

When using stage: We can change the way the results are displayed using gridview and change the number of columns (crossAxisCount).

When using production: the results are displayed in a fixed listview.

### An explanation of how to build the application

- architecture : Clean architecture
- state managment : Bloc - Cubit
- dependency injection : getIt
- testing : http_mock_adapter - bloc_test -  mockito.

### Testing

All layers have been tested:

##### Data Layer ::

###### Data source test cases:
- Search critical Request must be successful response status 200 when send first name and middle name together.

- Search critical Request must be successful response status 200 when send first name or middle name.

- Search critical Request must be failed response status 500 when do not send first name and middle name.

- Search critical request must be failed response status 500 when send nationalty not matched with real country name.

###### Model test cases:
- should convert json file to Model object.

- Show all fields is string datatype when send request.

- Check if the one of response list element contains the same name.

###### Repository test cases:
- Check device connection.

- When online device should return remote data when the call to remote data source is successful.

- when online device Should return server failure when the call to remote data source with failed data.

- When device offlibe Should return offline failure when the call to remote data source.

##### Domain Layer ::

###### Entity  test cases : 
- should personModel is subclass of personEntity.


###### Usecase test cases :
- Should get right of success response person with success field request.

- Should get left of failure response person with failure field request.


##### Peresentstion Layer ::

###### Bloc test cases :
- init nothing state.

- emits SearchCriteriaLoading and SearchCriteriaSuccess when RequestPerson is successCase.

- emits SearchCriteriaLoading ,  SearchCriteriaField when RequestPerson is Fialure Case.

###### Widget test cases :
- system shall show text error massage when first name and middel name fileds are empty.

- system shall show text error massage when nationalty field filed contauin fake country name.

- system shall not show text error massage when first name and middel name fileds are not empty and nationalty is correct country name.

##### Core Layer ::

###### Validation test cases :
- validation country input field.

system shall matches with nationalty with real country name is success case.

system shall not matches with nationalty with fake name is failure case.

- system shall validation input name with real name.

system shall required at least one name of user (fname | mName) is passed.

system shall required at least one name of user (fname | mName) is not passed.
