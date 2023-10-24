import 'package:flutter/material.dart';
import 'package:newtodoproject/view/button/add_view_button.dart';
import 'package:newtodoproject/view_model/view_model.dart';
import 'package:provider/provider.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewModel>(builder: (context, viewmodel, child){
      
      return SizedBox(
        height: 60,
        child: ElevatedButton(

            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.grey.shade50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                )
            ),

            onPressed: (){

              viewmodel.bottomsheetbuild(AddTaskBottomView(), context);

            }, child: Icon(Icons.add, size: 30,)),
      );



      });
    }

  }

