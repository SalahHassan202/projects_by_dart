import 'dart:io' ;

void main()
{
  List <String> tasks =[] ;
  int ch = 0 ;         // choice

  // do while loop ===> to make a program execute atleast one time

  do 
  {
    // the structured of the program 
    print("-----To Do App-----") ; 
    print("1. Add Task") ;
    print("2. Remove Task") ;
    print("3. View Tasks") ;
    print("4. Exit") ;
    // **********************************************
    stdout.write("Enter Your Choice: ") ;
    ch = int.parse(stdin.readLineSync()!) ; 

    switch(ch)
    {

      case 1 :
        stdout.write("Enter Your task: ") ;
        String task = stdin.readLineSync()! ;
        tasks.add(task) ;
        print("Task Add To A list Sucessfully!") ; 
        break ;
      //??????????????????????????????????????????????????????????????????
      case 2 :
        print("List = ${tasks}") ;
        stdout.write("Enter Task Number : ") ;
        int x = int.parse(stdin.readLineSync()!) ;
        if(tasks.isEmpty)
        {
          print("Tasks list is Empty!!!") ;
        }
        else if(x >tasks.length || x < 1)
        {
          print("Invalid Number!!! Please , Enter a Number again: ") ;
          stdout.write("Enter Task Number : ") ;
          x = int.parse(stdin.readLineSync()!) ;
        }
        else
        {
          tasks.removeAt(x-1) ; // List  ===>  start from zero index
          print("Task Remove Sucessfully!!!") ;
        }
        break ;
        //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        case 3 :
          print("Your Tasks : $tasks") ;
          break ;
    }

  } while(ch > 0 && ch < 4) ; 



}