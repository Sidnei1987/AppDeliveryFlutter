import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 import 'package:untitled3_app/theming_and_state_management/presentation/splash/splash_screen.dart';
import 'package:untitled3_app/theming_and_state_management/presentation/theme.dart';
import 'presentation/splash/splash_screen.dart';

 class MainThemingAndStateManagementApp extends StatelessWidget{
   @override
   Widget build(BuildContext context) {

     final _boderLight = OutlineInputBorder(
     borderRadius: BorderRadius.circular(10),
     borderSide: BorderSide(
       color: DeliveryColor.orange, // não mudou nd ainda
       width: 2,
       style: BorderStyle.solid,
     ),
   );

   final _boderDark = OutlineInputBorder(
     borderRadius: BorderRadius.circular(10),
     borderSide: BorderSide(
       color: DeliveryColor.dark, // borda do balão usuario e senha
       width: 2,
       style: BorderStyle.solid,
     ),
   );


   final lightTheme = ThemeData( // só ira muda se eu colocar ele de theme na home
     canvasColor: DeliveryColor.orange, // não mudou nada
     textTheme: GoogleFonts.poppinsTextTheme().apply(
       bodyColor: DeliveryColor.orange, // não mudou nada
       displayColor:DeliveryColor.orange , // não mudou nada
     ),
     inputDecorationTheme: InputDecorationTheme(
       border: _boderLight,
       enabledBorder: _boderLight,
       labelStyle: TextStyle(color: DeliveryColor.orange ),
       focusedBorder: _boderLight,
       hintStyle: GoogleFonts.poppins(
         color: DeliveryColor.orange ,
         fontSize: 10,
       ),
     ),
     iconTheme: IconThemeData(
       color: DeliveryColor.purple,

     ),
   );

   final darkTheme = ThemeData(
     appBarTheme: AppBarTheme(
       color: DeliveryColor.veryLightGrey,
       textTheme: GoogleFonts.poppinsTextTheme().copyWith(
           headline6: TextStyle(
             fontSize: 20,
             color: DeliveryColor.purple,
             fontWeight: FontWeight.bold,
           ),
       ),
     ),
     canvasColor: DeliveryColor.yellow, // cor do logo
     scaffoldBackgroundColor: DeliveryColor.dark ,// cor do fundo login_screen
     textTheme: GoogleFonts.poppinsTextTheme().apply(
       bodyColor: DeliveryColor.orange , //nada
       displayColor:DeliveryColor.dark , // cor do nome delivery da home
     ),
     inputDecorationTheme: InputDecorationTheme(
         border: _boderDark,
         enabledBorder: _boderDark,
         focusedBorder: _boderDark,
         labelStyle: TextStyle(color: DeliveryColor.orange),// cor do iniciar sessão, usuario e senha login_screen
         fillColor: DeliveryColor.white,// balão do usuario e senha.
         filled: true,
         hintStyle: GoogleFonts.poppins(
           color: DeliveryColor.orange,//nome usuario e senha do balão
           fontSize: 20, // tamanho da fonte
         )
     ),
     iconTheme: IconThemeData(
       color: DeliveryColor.dark,
     ),
   );
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: darkTheme,
       home: SplashScreen(),
     );
   }
 }