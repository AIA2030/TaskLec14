
import 'package:flutter/material.dart';
import 'package:newtodoproject/view/button/change_view_button.dart';
import 'package:newtodoproject/view/button/delete_view_button.dart';
import 'package:newtodoproject/view_model/view_model.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewModel>(builder: (context, viewmodel, child){

      return Row(

        children: [

          Expanded(flex: 3, child: Text("Welcome ${viewmodel.getusername()}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),

          Expanded(flex:1, child: IconButton(icon: Icon(Icons.update_rounded) , onPressed: (){

            viewmodel.bottomsheetbuild(ChangeNameBottomView(), context);

          },)),

          Expanded(flex:1, child: IconButton(icon: Icon(Icons.delete) , onPressed: (){

            viewmodel.bottomsheetbuild(DeleteBottomView(), context);

          },)),
        ],
      );



    } );
  }
}
