// Define an interface or abstract class
abstract class Account {
  void deposit(double amount);
  void withdraw(double amount);
}

// Define a class for Bank Account
class BankAccount implements Account {
  String accountNumber;
  String accountHolder;
  double balance;

  BankAccount(this.accountNumber, this.accountHolder, this.balance);
  @override
  void deposit(double amount) {
    balance += amount;
    print('Deposited: \ksh ${amount.toStringAsFixed(2)}');
  }

  @override
  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print('Withdrawn: \ksh ${amount.toStringAsFixed(2)}');
    } else {
      print('Insufficient balance!');
    }
  }

  @override
  String toString() {
    return 'Account Number: $accountNumber, Account Holder: $accountHolder, Balance: \ksh ${balance.toStringAsFixed(2)}';
  }
}

void main() {
  BankAccount myAccount = BankAccount('123456789', 'John Doe', 1000.0);

  myAccount.deposit(500.0);
  myAccount.withdraw(200.0);

  print(myAccount);

  for (int i = 0; i < 3; i++) {
    myAccount.deposit(100.0 * (i + 1));
    myAccount.withdraw(50.0 * (i + 1));
  }
  print(myAccount);
}
