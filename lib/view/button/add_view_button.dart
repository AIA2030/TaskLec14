


import 'package:flutter/material.dart';
import 'package:newtodoproject/model/task.dart';
import 'package:newtodoproject/view_model/view_model.dart';
import 'package:provider/provider.dart';

class AddTaskBottomView extends StatelessWidget {
  const AddTaskBottomView({super.key});

  @override
  Widget build(BuildContext context) {

    final TextEditingController entryController = TextEditingController();

    return Consumer<ViewModel>(builder: (context, viewmodel, child){

      return Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),

        child : Container(
            height: 80,
            width: 400,
            child: Center(
              child: SizedBox(
                height: 40,
                width: 250,
                child: TextField(
                  onSubmitted: (value){

                    if(entryController.text.isNotEmpty){

                      Task newobject = Task(entryController.text, false);
                      viewmodel.addtask(newobject);

                      entryController.clear();

                    }


                    Navigator.of(context).pop();
                  },

                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 5),
                      filled: true,
                      fillColor: Colors.grey.shade50,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(80),
                          borderSide: const BorderSide(
                              width: 0, style: BorderStyle.none))),

                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,

                  autofocus: true,
                  autocorrect: false,
                  controller: entryController,
                  style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
                ),
              ),
            ),
          )
      );

    });
  }
}


