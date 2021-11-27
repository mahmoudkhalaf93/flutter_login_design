import 'dart:io';
import 'dart:math';

main() {

  double x =2 ,y =3 ,a =4 , b=5,c=6;
  double firstPart =(3+4*x)/5;
  double secondPart = 10*(y-5)*(a+b+c)/x;
  double thirdPart = 9*(4/x+(9+x)/y);
  double finalResult = firstPart-secondPart+thirdPart;
  print(finalResult);

////////

  int r=5;
  double area = pi *pow(r, 2);
  area = (area*100).round()/100;
  print(area);

      //Round(area * 100) / 100.0;

////TestEmpTax
  print("enter your grossSalary :");
  String inputGrossSalary = stdin.readLineSync()!;
  double grossSalary = double.tryParse(inputGrossSalary) ?? 0;

  int tax = 0;
  if (grossSalary >= 5000) {
    tax = 10;
  }

  double netSalary = grossSalary - (grossSalary * tax / 100);
  double annualNetSalary =netSalary*12;

  print("net salary : $netSalary");
  print("annual Net Salary : $annualNetSalary");

  ////////////////////////

// Test Age

  print("enter your age");
  String inputAge = stdin.readLineSync()!;
  double age = double.tryParse(inputAge) ?? 0;
 /** if (age > 16)
      print("you are a man");

      else if (age >= 11 && age <= 16)
      print("you are a boy");
      else
      print("You are a child");
   */
  if(age > 16){
    print("you are a man");
  } else if(age>=11){
    print("you are a boy");
  } else {
    print("You are a child");
  }


  ////random game

  int correctAns=0;
  int falseAns=0;
  while(true) {
    int firstNum = new Random().nextInt(100);
    int secondNum = new Random().nextInt(100);
    print("$firstNum + $secondNum = ");
    print("enter exit to exit");
    String inputNum = stdin.readLineSync()!;
    if(inputNum == "exit")
      break;
    double Num = double.tryParse(inputNum) ?? 0;
    if ((firstNum + secondNum) == Num) {
      print("correct");
      correctAns++;
    } else {
      print("wrong");
      falseAns++;
    }

  }
  print("correct ans : $correctAns \n wrong ans : $falseAns");
  /////////////// check even num

  int num = 20;
  print("number $num is ");
  if (num % 2 == 0) {
    print("even num");
  } else
    print("odd num");

  /////////check divisible

  int numC = 14;
  print("is $numC divisible by 2 and 3 and 6");
  if (numC % 2 == 0 && numC % 3 == 0 && numC % 6 == 0)
    print("true");
  else
    print("false");

//////////// looooooooooooooooooooooooooooooooooooooooooooooooooooop

  for (int i = 1; i <= 10; i++) {
    //print(i);
    stdout.write(" $i");
  }

////////// SumAverageNumbers

 double sum = 0;
  for (int i = 1; i <= 100; i++) {
    sum = sum + i;
  }
  print("\nsum = $sum");
  double avg = sum / 100;
  print("avg = $avg");
  ///////////// sumavginput////////
  double sumI = 0;
  print('enter 5 numbers and calculate the sum  : ');
  for (int i = 1; i <= 5; i++) {
    print("enter num$i :");
    double numI = double.tryParse(stdin.readLineSync()!) ?? 0;
    sumI = sumI + numI;
  }
  print("sum = $sumI");
  double avgI = sumI / 5;
  print("avg = $avgI");
  ////////////// class EvenOddNums_004

double sumE = 0;
  double sumO = 0;
  double countE = 0;
  double countO = 0;
  print('sum and count even numbers and odd numbers enter 5 numbers : ');
  for (int i = 1; i <= 5; i++) {
    print("enter num$i :");
    double numI = double.tryParse(stdin.readLineSync()!) ?? -1;
    if (numI % 2 == 0) {
      sumE = sumE + numI;
      countE++;
    } else  {
      sumO = sumO + numI;
      countO++;
    }
  }
  print("sum of even num : $sumE and count is $countE");
  print("sum of odd num : $sumO and count is $countO");

  ///////////class NumFactors num x accept division by  ? what is the numbers

 // int x = 9;
  print('calculate num factors of $x :');
  for (int i = 1; i <= x; i++) {
    if (x % i == 0) {
      print(i);
    }
  }
}
