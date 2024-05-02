import '../../../../utils/exports.dart';

class GridViewConvertListViewCubit extends Cubit<int> {
 GridViewConvertListViewCubit(super.initialState);
 int numOfColmun = 1 ;


 changeView(){
  if (numOfColmun == 1){
    numOfColmun =2;
    emit(numOfColmun);
  }else {
    numOfColmun = 1;
    emit(numOfColmun);
  }
 }
}