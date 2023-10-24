
import 'package:flutter/material.dart';
import 'package:newtodoproject/model/task.dart';
import 'package:newtodoproject/model/user.dart';

class ViewModel extends ChangeNotifier{


  List<Task> tasks = <Task>[];

  User user = User("Add Name");


  void addtask( Task newobject){
    
    tasks.add(newobject);
    print(newobject);
    notifyListeners();

  }

  String getusername(){

    return user.username;
  }

  void updateusername(String newusername){

    user.username = newusername;
    notifyListeners();
  }


  int numberofnotcomplete(){
    return tasks.where((task) => !task.complete).length;
  }

  int getlengthtask(){

    return tasks.length;
  }

  void settaskvalue( int taskindex, bool taskvalue){

    tasks[taskindex].complete = taskvalue;

    notifyListeners();

  }

  void deletetask(int taskindex){

    tasks.removeAt(taskindex);
    notifyListeners();

  }

  void deleteaalltasks(){

    tasks.clear();
    notifyListeners();
  }

  void deletecompletetask(){

    tasks = tasks.where((task) => !task.complete).toList();
    notifyListeners();
  }

  String getakeoftask(int index){
    return tasks[index].title;
  }

  bool getvalueoftask(int index){
    return tasks[index].complete;
  }

  void bottomsheetbuild(Widget bootomsheet , BuildContext context){

    showBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),

        clipBehavior: Clip.antiAliasWithSaveLayer,

        context: context, builder: (context){

      return bootomsheet;
    });
  }

}