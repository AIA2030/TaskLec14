import 'package:flutter/material.dart';
import 'package:newtodoproject/view_model/view_model.dart';
import 'package:provider/provider.dart';

class TaskInfo extends StatelessWidget {
  const TaskInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewModel>(builder: (context, viewmodel, child){

      return Row(

        children: [

          Expanded(flex: 2, child: Card(
            child: Column(

              children: [
                Padding(padding: EdgeInsets.all(13)),
                Text("Total Task", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                Text("number is ${viewmodel.getlengthtask()}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),

              ],
            ),
          )),  Expanded(flex: 2, child: Card(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(13)),
                Text("Remaining Task", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                Text("number is ${viewmodel.numberofnotcomplete()}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
              ],
            ),
          )),
        ],
      );
    } );
  }
}
