

abstract class Validations {
  // static const String _phoneNoRegExp = r'^(?:[0+][0-9])';
  // static const String _visaNoRegExp = r'^(?:[0-9])?[0-9]{16}$';
  // static const String _cvvNoRegExp = r'^(?:[0-9])?[0-9]{3}$';

  static String? validateName(String? name) {
    if (name!.trim().isEmpty) return 'هذا الحقل مطلوب';
    if (name.length < 2) return 'Name must be at least 2 characters';
    if (name.length > 50) return 'Name must be at most 50 character';
    return null;
  }

  static String? validateIndetiferCard(String? name) {
    print(name);
    if (name!.trim().isEmpty) return 'هذا الحقل مطلوب';
    if (!name.startsWith("1")) return "هذا الحقل يجب ان يبدا برقم ١ ";
    if (name.length < 9) return 'يجب ان يحتوي علي ٩ عناصر علي الاقل';
    if (name.length > 14) return 'يجب الا يتعدي ال ١٤ عنصر';

    return null;
  }



 



}
