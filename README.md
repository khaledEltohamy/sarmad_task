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

### An explanation of how to build the application and tests

- architecture : Clean architecture
- state managment : Bloc - Cubit
- dependency injection : getIt
- testing : http_mock_adapter - bloc_test -  mockito.

### Testing

All layers have been tested:

Data source test cases:
- Search critical Request must be successful response status 200 when send first name and middle name together.

- Search critical Request must be successful response status 200 when send first name or middle name.

- Search critical Request must be failed response status 500 when do not send first name and middle name.

- Search critical request must be failed response status 500 when send nationalty not matched with real country name.









, we just need you to
show these data (Name, Description, Nationality, Place of birth
and the score).

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
