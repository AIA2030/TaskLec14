
import 'package:flutter/material.dart';
import 'package:newtodoproject/view/add_task.dart';
import 'package:newtodoproject/view/header.dart';
import 'package:newtodoproject/view/list_view.dart';
import 'package:newtodoproject/view/task_info.dart';
import 'package:newtodoproject/view_model/view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context)=> ViewModel(), child: const MyApp(),)
  );

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black54),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:

      SafeArea(

        child: Column(
          
          
          children: [
            
            Expanded(
                flex: 1,
                child: Header()),

            Expanded(
                flex: 1,
                child: TaskInfo()),

            Expanded(
                flex: 5,
                child: Listview()),

          ],
        ),
      ),

      floatingActionButton: AddTask()
    );

  }
}
