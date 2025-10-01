// Quiz App

import 'dart:io' ;

void main()
{
  print("====================");
  print("Welcome to Quiz App!");
  print("====================");
  print("You will be asked some questions with multiple choices.");
  print("Type the correct option number to answer.\n");

  int score = 0 ; 
  int totalQuestions = 5 ;

  // first Question 
  print("Q1: What is the capital of France?");
  print("1) Berlin");
  print("2) Madrid");
  print("3) Paris");
  print("4) Rome");
  stdout.write("Answer between (1 t0 4):");
  String input1 = stdin.readLineSync()!;
  if(input1 == "3")
  {
    print("Correct Answer.\n");
    score++;
  }
  else
  {
    print("Wrong Answer!! The Correct Answer Is Paris.\n") ; 
  }

  // second Question
  print("Q2: How many continents are there in the world?");
  print("1) 5");
  print("2) 6");
  print("3) 7");
  print("4) 8");
  stdout.write("Answer between (1 t0 4):");
  String input2 = stdin.readLineSync()!;
  if(input2 == "3")
  {
    print("Correct Answer.\n");
    score++;
  }
  else
  {
    print("Wrong Answer!! The Correct Answer Is 7 .\n") ; 
  }

  // third Question
  print("Q3: Which language is used to build Flutter apps?");
  print("1) Dart");
  print("2) Python");
  print("3) Java");
  print("4) C#");
  stdout.write("Answer between (1 t0 4):");
  String input3 = stdin.readLineSync()!;
  if(input3 == "1")
  {
    print("Correct Answer.\n");
    score++;
  }
  else
  {
    print("Wrong Answer!! The Correct Answer Is Dart.\n") ; 
  }

  // forth Question
  print("Q4: How many days are there in a week?");
  print("1) 5");
  print("2) 6");
  print("3) 9");
  print("4) 7");
  stdout.write("Answer between (1 t0 4):");
  String input4 = stdin.readLineSync()!;
  if(input4 == "4")
  {
    print("Correct Answer.\n");
    score++;
  }
  else
  {
    print("Wrong Answer!! The Correct Answer Is 7.\n") ; 
  }

  // fifth Question
  print("Q5: What color is the sky on a clear day?");
  print("1) Green");
  print("2) Blue");
  print("3) Red");
  print("4) Yellow");
  stdout.write("Answer between (1 t0 4):");
  String input5 = stdin.readLineSync()!;
  if(input5 == "2")
  {
    print("Correct Answer.\n");
    score++;
  }
  else
  {
    print("Wrong Answer!! The Correct Answer Is Blue.\n") ; 
  }

  print("=============");
  print("Final Result!");
  print("=============");

  if(score == totalQuestions)
  {
    print("Excellent!");
  }
  else if(score >= 3)
  {
    print("Good job!");
  }
  else // score<3
  {
    print("Better luck next time!");
  }

  print("=============");
  print("Good Bye!") ;
  print("=============");

}