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


// ======== Task 3: Combined Conversion Demo ========
/// Converts input string to both int and double, then prints results
/// If the conversion fails, it catches, 
/// the error and prints an error message.
///
/// [number] - The string input to be converted.
void convertAndDisplay(String number) {
  try {
    // Attempt to convert the string to an integer
    int intValue = stringToInt(number);
    
    // Attempt to convert the string to a double
    double doubleValue = stringToDouble(number);
    
    // Print the results of the conversions
    print('String "$number" converted to:');
    print('  int: $intValue');       // Display the integer value
    print('  double: $doubleValue');  // Display the double value
  } catch (e) {
    // Catch any exceptions that occur during conversion
    print('Error converting "$number": $e'); // Print the error message
  }
}

// ======== Task 4: Control flows ========
/// Demonstrates various control flow examples including if-else statements,
/// switch-case statements, and different types of loops.
void controlFlowExamples() {
  // ======== If-Else Examples ========
  int number = 10; // Number to check

  // Check if the number is positive, negative, or zero
  if (number > 0) {
    print('$number is positive');
  } else if (number < 0) {
    print('$number is negative');
  } else {
    print('$number is zero');
  }

  // ======== Voting Eligibility Check ========
  int age = 17; // Age to check for voting eligibility
  if (age >= 18) {
    print('You are eligible to vote');
  } else {
    print('You are not eligible to vote');
  }

// ======== Switch Case for Days of the Week ========
  int day = 3; // Day number to check
  switch (day) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('Saturday');
      break;
    case 7:
      print('Sunday');
      break;
    default:
      print('Invalid day'); // Handle invalid day input
  }

// ======== Loop Examples ========
  // For loop: Print numbers from 1 to 10
  print('for loop:');
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

// While loop: Print numbers from 10 to 1
  print('while loop:');
  int j = 10; // Initialize j
  while (j >= 1) {
    print(j);
    j--; // Decrement j
  }