import 'dart:io';
void main()
{
  runfn();
}
void runfn()
async{ //we use async becuase we want to run fn three when fn2 completes its execution.
  // like we assume that fn2 is have long running time but we are getting a value from fn2
  // and again using this in fn3
  task1();
 int r= await task2();
  task3(r);
}
void task1()
{
  print("Hi I'm the first task");
}
Future<int> task2() //so for performing async, we have to use future
async{
  int x=0;
  Duration d= const Duration(seconds: 5); //declare a variable d of duration type, passing value in constructor
  // sleep(d); //synchronous method
  // for Asynchronous approach
  await Future.delayed(d,(){   //we also have to put await with future delayed
    x=6;
    print("Hi I'm the sec task");
  }
  ); //in brackets which is called call back fn, we have to

  // pass what should it will do after the completion of the time, so we're passing the task2 in fn

 // int x=6;
  //print("Hi I'm the sec task");
  return x;
}
void task3(int r)
{
  print("Hi I'm the third task  $r");
}