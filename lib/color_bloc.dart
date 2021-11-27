

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



enum ColorEvent {ivent_blue, ivent_green}

  class ColorBloc extends Bloc<ColorEvent, Color> {
  ColorBloc(Color initialState) : super(Color(0xFF4444ff));




  

  Color get initialState => Colors.blue;

  Stream<Color> mapEventToState(ColorEvent event) async*{
    switch (event){
      case ColorEvent.ivent_blue:
      yield state;
      break;
      case ColorEvent.ivent_green:
      yield state;
      break;
    }
    throw UnimplementedError();
  }

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
