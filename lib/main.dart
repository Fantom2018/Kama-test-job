


import 'package:bloc_lesson_kiril/color_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {


  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  BlocProvider(

      create: (BuildContext context) => ColorBloc(),
      child: const MaterialApp(
        title: 'Flutter Demo',
        home: MyHomePage(),

      ),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    ColorBloc _bloc = BlocProvider.of<ColorBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc exsample- flutter_Bloc'),
        centerTitle: true,
      ),
      body: Center(
        child: BlocBuilder<ColorBloc, Color>(
          builder: (context, currentColor)=> AnimatedContainer(
            height: 100,
            width: 100,
            color: currentColor,
            duration: const Duration(milliseconds: 400),
          ),
        ),

      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children:<Widget> [
          FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: (){
              _bloc.add(ColorEvent.ivent_blue);
            },
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: (){
              _bloc.add(ColorEvent.ivent_green);
            },
          ),
        ],
      ),
    );
  }
}
