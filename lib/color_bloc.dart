import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



enum ColorEvent{blue, green}

class ColorBloc extends Bloc<ColorEvent, Color>{

  Color _color = Colors.blue;


  ColorBloc(Color initialState) : super(initialState ) ;

  @override
  Color get initialState => Colors.blue;
  @override
  Stream<Color> mapEventToState(ColorEvent event) async*{
    _color = (event == ColorEvent.blue) ? Colors.blue : Colors.green;
    yield _color;
  }

}