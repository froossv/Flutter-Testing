class FieldValidator{

  static String validateEmail(String value){

    Pattern pattern = r'^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$';
    RegExp regex = RegExp(pattern);

    if(value.isEmpty) {
      return 'Enter Email';
    }
    if(!regex.hasMatch(value)){
      return 'Enter Valid Email';
    }
    return null;
  }

  static String validatePassword(String value){

    if(value.isEmpty){
      return 'Enter Password';
    }
    if(value.length < 5){
      return 'Short Password!';
    }
    return null;
  }
}