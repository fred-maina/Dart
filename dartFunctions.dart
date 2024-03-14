
// Task 1: Add two numbers

int addTwo(int num1, int num2) {
  return num1 + num2;
}

// Task 2: Subtract two numbers
int subtractTwo(int num1, int num2) {
  return num1 - num2;
}

// Task 3: Multiply two numbers
int multiplyTwo(int num1, int num2) {
  return num1 * num2;
}

// Task 4: Divide two numbers
double divideTwo(double num1, double num2) {
  return num1 / num2;  
}
int stringLength(String str) {
  return str.length;
}
// Task 6: Get the first element of a list
dynamic getFirstElement(List list) {
{
  return list.first;
}
}
void main() {
  // Example usage:
  print('Task 1: ${addTwo(5, 3)}'); // Output: 8
  print('Task 2: ${subtractTwo(10, 4)}'); // Output: 6
  print('Task 3: ${multiplyTwo(2, 6)}'); // Output: 12
  print('Task 4: ${divideTwo(10, 2)}'); // Output: 5.0
  print('Task 5: ${stringLength("Hello")}'); // Output: 5
  print('Task 6: ${getFirstElement([1, 2, 3])}'); // Output: 1
}