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

// Do-while loop: Print numbers from 1 to 5
  print('do-while loop:');
  int k = 1; // Initialize k
  do {
    print(k);
    k++; // Increment k
  } while (k <= 5);
}

// ======== Task 5: Combine Data & Control Flow ========
void analyzeNumbers(List<int> numbers) {
  // Iterate through each number in the input list
  for (int number in numbers) {
    // Print current number being processed
    print('\nNumber: $number');

// Check if number is even or odd using modulo operator
// - Even: divisible by 2 with 0 remainder
// - Odd: not divisible by 2 (remainder 1)
    print('$number is ${number % 2 == 0 ? 'even' : 'odd'}');

/**
     * Categorize number by size using enhanced switch
     * 
     * Categories:
     * - Large:  101 and above (>= 101)
     * - Medium: 11 to 100 (>= 11)
     * - Small:  1 to 10 (>= 1)
     * 
     * Note: Switch cases are evaluated top-to-bottom, so we check
     *       largest ranges first to prevent incorrect matches
     * 
     * Special handling:
     * - Numbers < 1 (negative or zero) fall through to default case
     */
    switch (number) {
      // Large numbers (101+)
      case >= 101:
        print('$number is large');
        break;
      
      // Medium numbers (11-100)
      case >= 11:
        print('$number is medium');
        break;
      
      // Small numbers (1-10)
      case >= 1:
        print('$number is small');
        break;

      // Handle all other cases (negative numbers and zero)
      default:
        print('$number is not categorized');
    }
  }
}