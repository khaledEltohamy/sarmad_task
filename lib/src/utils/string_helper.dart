class StringHelper {
 String convertArrayList(List<dynamic> listArgument){
  String result = '';
  if (listArgument.isEmpty) return result;
   for(var arg in listArgument){
    final Map<String ,dynamic> currentValue = arg as Map<String ,dynamic>;
    for (var value in currentValue.values){
        result += " $value";    
    }
   }
   return result;
 }
 String convertStringList(List<dynamic> listArgument){
  String result = '';
  if (listArgument.isEmpty) return result;
   for(var arg in listArgument){
        result += " $arg";    
    
   }
   return result;
 }
}