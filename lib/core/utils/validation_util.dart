class ValidationUtil {
  static String? pollQuestionValidator(String? value){
    if(value == null || value.trim().isEmpty){
      return "The question is required";
    }
    return null;
  }
}