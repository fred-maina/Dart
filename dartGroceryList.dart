import 'dart:io';

Map<String, int> groceryList = {};

void addGroceryItem(String item, int price) {
  groceryList[item] = price;
}

void main() {
  stdout.write("Enter the item you wish to add in the grocery list: ");
  String? item = stdin.readLineSync(); // String? indicates it could be null
  
  if (item != null) { // Check for null
    stdout.write("Enter the price of $item: ");
    String? priceInput = stdin.readLineSync(); // String? indicates it could be null
    
    if (priceInput != null) { // Check for null
      int price = int.tryParse(priceInput) ?? 0; // Parse price to integer or default to 0 if parsing fails
      
      addGroceryItem(item, price);
      
      // Print the updated grocery list
      print("Updated Grocery List:");
      groceryList.forEach((item, price) {
        print("$item: $price");
      });
    } else {
      print("Invalid price input. Please enter a valid integer.");
    }
  } else {
    print("Invalid item input. Please enter a valid item.");
  }
}
