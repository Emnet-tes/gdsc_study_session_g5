import 'dart:io';

class Calculator {
  var n1;
  var n2;
  Calculator(this.n1, this.n2);
  double add() {
    return n1 + n2;
  }

  double subtract() {
    return n1 - n2;
  }

  double multiply() {
    return n1 * n2;
  }

  void divide() {
    try {
      if (n2 == 0) {
        throw Exception("zero can't be the denominator");
      } else {
        print(n1 / n2);
      }
    } catch (e) {
      print(e);
    }
  }
}

void main() {
  stdout.write('enter two numbers: ');
  double num1 = double.parse(stdin.readLineSync()!);
  double num2 = double.parse(stdin.readLineSync()!);
 Calculator t = new Calculator(num1, num2);
  Future.delayed(Duration(seconds: 5), () {
  stdout.writeln("addition: ${t.add()}");
  stdout.writeln("multiplication: ${t.multiply()}");
  stdout.writeln("difference: ${t.subtract()}");
  stdout.write("division: ");
   t.divide(); 
});
     
      
}
