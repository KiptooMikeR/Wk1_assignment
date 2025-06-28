// ======== Task 1: Define Variables ========
void defineVariables() {
  // Integer
  int age = 25;
  print('Integer: $age');
  
  // Double
  double height = 5.7;
  print('Double: $height');
  
  // String
  String name = 'Alice';
  print('String: $name');
  
  // Boolean
  bool isStudent = true;
  print('Boolean: $isStudent');
  
  // List of integers
  List<int> numbers = [1, 2, 3, 4, 5];
  print('List<int>: $numbers');
}

  // ======== Task 2: Type Conversion Functions ========
  /// Converts a String to an integer
  /// Throws FormatException if input is not a valid integer
  int stringToInt(String input) => int.parse(input);

  /// Converts a String to a double
  /// Throws FormatException if input is not a valid number
  double stringToDouble(String input) => double.parse(input);

  /// Converts an integer to a String
  String intToString(int input) => input.toString();

  /// Converts an integer to a double
  double intToDouble(int input) => input.toDouble();