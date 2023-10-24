import 'package:flutter/material.dart';
import 'package:newtodoproject/view_model/view_model.dart';
import 'package:provider/provider.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewModel>(builder: (context, viewmodel, child){

      return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))
          ),

          child: ListView.separated(

            padding: EdgeInsets.all(15),
            separatorBuilder: (context , index){

              return SizedBox(height: 10,);
            },

            itemCount: viewmodel.getlengthtask(),
            itemBuilder: (context, index) {

              return Dismissible(key: UniqueKey(), onDismissed: (direction) {

                viewmodel.deletetask(index);

              },
                background: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      color: Colors.red.shade300,
                      borderRadius: BorderRadius.circular(10)),

                  child: Center(
                      child: Icon(Icons.delete, color: Colors.red.shade700)),
                ),

                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)),

                  child: ListTile(
                    leading: Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),

                      side: BorderSide(width: 2),
                      checkColor: Colors.cyan,
                      activeColor: Colors.yellow,
                      value: viewmodel.getvalueoftask(index),
                      onChanged: (value){
                        viewmodel.settaskvalue(index, value!);

                      },
                    ),

                    title: Text(viewmodel.getakeoftask(index), style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500)),
                    trailing: IconButton(icon: Icon(Icons.delete),
                      onPressed: (){
                        viewmodel.deletetask(index);
                      },
                    ),
                  ),
                ),
              );
            },



          )
      );

    } );
  }
}

