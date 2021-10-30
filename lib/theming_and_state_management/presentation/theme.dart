// colors
import 'package:flutter/material.dart' ;
import 'package:google_fonts/google_fonts.dart';

class DeliveryColor{
  static final purple = Color(0xFF5117AC);
  static final green =  Color(0xFF20D0C4);
  static final dark = Color(0xFF03091E);
  static final grey = Color(0xFF212738);
  static final lightGrey = Color(0xFFBBBBBB);
  static final veryLightGrey = Color(0xFFF3F3F3);
  static final white = Color(0xFFFFFFF);
  static final pink = Color(0xFFF5638B);
  static final yellow = Color (0xFFFBD029);
  static final amberAccent  = Color (0xFFFFD740);
  static final  orange = Color (0xFFEF6C00);
  static const Alignment center = Alignment(0.0, 0.0);
}
 final _boder =OutlineInputBorder(
   borderRadius: BorderRadius.circular(5),
   borderSide: BorderSide(
     color: DeliveryColor.orange, // sem função por enquanto
     style: BorderStyle.solid,
   ),
 );

 final deliveryGradients= [
   DeliveryColor.orange,
   DeliveryColor.yellow, // degrade do botão iniciar
 ];
