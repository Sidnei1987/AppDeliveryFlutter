import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled3_app/theming_and_state_management/presentation/login/login_screen.dart';
import 'package:untitled3_app/theming_and_state_management/presentation/theme.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

   @override
    void initState(){
     Future.delayed(const Duration(seconds: 5),
             (){
       Navigator.of(context).pushReplacement(MaterialPageRoute(
           builder: (_) => LoginScreen(),
       ));
     });
     super.initState();
   }
    @override
   Widget build(BuildContext context){
     return Scaffold(
     body: Container(
       decoration: BoxDecoration(
         gradient: LinearGradient(
           begin: Alignment.topCenter,
           end: Alignment.bottomCenter,
           colors: [
             DeliveryColor.yellow,
            DeliveryColor.yellow,
           ],

         ),
       ),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         mainAxisAlignment: MainAxisAlignment.center,
         children:[
         CircleAvatar(
         backgroundColor: DeliveryColor.yellow, // cor do circulo da home do logo
         radius: 140,
         child: Padding(
           padding: const EdgeInsets.all(12.0),
           child: Image.asset(
             'assets/images/logo_nikkey.png',
           ),
         ),
       ),

           const SizedBox(height: 8),
             Text(
               'DeliveryNIKKEY',
                textAlign: TextAlign.center,
               style: Theme.of(context).textTheme.headline4?.copyWith(
                fontWeight: FontWeight.w800,
               ),

             ),
        ],
         ),
       ) ,
     );


  }
}