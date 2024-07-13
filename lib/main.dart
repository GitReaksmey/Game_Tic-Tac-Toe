

import 'package:flutter/material.dart';
import 'package:tic_tac_toe_game/homescreen.dart';

void main(){
  runApp(MyGame());
}
class MyGame extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : HomeScreen(),
    );
  }
}