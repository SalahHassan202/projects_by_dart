// StopWatch App

import 'dart:io' ;
import 'dart:async';
import 'dart:convert';

void main()
{
  print("==========================");
  print("Welcome to StopWatch App!");
  print("==========================");

  int seconds = 0 ;
  Timer? stopwatchTimer ;

  //! ===========================================================
  // startStopwatch
  void startStopwatch()
  {
    if(stopwatchTimer == null)
    {
      stopwatchTimer = Timer.periodic(Duration(seconds :1),(_) 
      {
        seconds++ ;
        print("Stopwatch: $seconds s") ;
      });
       print("Stopwatch started!");
    }
    else
    {
      print("Stopwatch already running!") ;
    }
  }
  //! ===========================================================
  // stopStopwatch
  void stopStopwatch()
  {
    if(stopwatchTimer != null)
    {
      stopwatchTimer?.cancel();
      stopwatchTimer = null;
      print("Stopwatch stopped at $seconds s") ;
    }
    else
    {
      print("Stopwatch is not running!") ;
    }
  }
  //! ===========================================================
  // resetStopwatch
  void resetStopwatch()
  {
    seconds = 0 ;
    print("Stopwatch reset to 0!");
  }
  //! ===========================================================
  void printMenu()
  {
    print("\nChoose an option:");
    print("1) Start Stopwatch");
    print("2) Stop Stopwatch");
    print("3) Reset Stopwatch");
    print("4) Exit");
    print("==========================");
    stdout.write("Enter choice: ");
  }
  //! ===========================================================
  //  بقول للبرنامج اسمع كل حاجه المستخدم هيكتبها في الكيبورد
   stdin.transform(utf8.decoder).transform(LineSplitter()).listen((choice)
   {
    if (choice == "1")
    {
      startStopwatch();
    }
    else if (choice == "2")
    {
      stopStopwatch();
    }
    else if (choice == "3")
    {
      resetStopwatch();
    }
    else if (choice == "4")
    {
      print("Goodbye!");
      exit(0);
    }
    else {
      print("Invalid Number...Try Again!!!");
    }
    // في الآخر اطبع المنيو تاني عشان يختار حاجه جديدة
    printMenu();
  }
  );
  // اطبع المنيو لأول مره بس قبل ما يبتدي يسمع من الكيبورد
  printMenu();

}