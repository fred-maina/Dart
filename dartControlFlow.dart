import 'dart:io';
void main(){
  stdout.write("Enter a number");
  String? numberInput = stdin.readLineSync(); 
  int number = int.tryParse(numberInput!) ?? 0; 
  if (number>10){
    print("Your Number is Greater than 10");
  }
  else if (number<10)
  print("Your Number is Less than 10"); 
  else if(number == 10)
  print("Your Number is equal to 10");
  else{
    print("Invalid Number!!");
  }
}