
import 'package:flutter/material.dart';
import 'package:newtodoproject/view_model/view_model.dart';
import 'package:provider/provider.dart';

class DeleteBottomView extends StatelessWidget {
  const DeleteBottomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewModel>(builder: (context, viewmodel, child){

      return Container(
        height: 200,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            ElevatedButton(onPressed: (){
              viewmodel.deleteaalltasks();
              Navigator.of(context).pop();
            },
                style: ElevatedButton.styleFrom(

                  textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
                child: Text("Delete All")),

            SizedBox(width: 15,),

            ElevatedButton(onPressed: (){
              viewmodel.deletecompletetask();
              Navigator.of(context).pop();
            },
                style: ElevatedButton.styleFrom(

                  textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
                child: Text("Delete Completed")),


          ],
        ),
      );

    });
  }
}
