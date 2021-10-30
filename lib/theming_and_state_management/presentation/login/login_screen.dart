import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3_app/theming_and_state_management/presentation/home/home_screen.dart';

import '../theme.dart';

const logoSize = 60.0;
class LoginScreen extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final moreSize = 50.0;
    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
          flex: 2,
          child:Stack(
              children: [                   // cor, tamanho e curvatura do circulo em cima do logo
                Positioned(
                    bottom: logoSize,
                   left: -moreSize / 2,
                   right: -moreSize / 2,
                   height : width + moreSize,
                   child: Container(
                     decoration: BoxDecoration(
                       gradient: LinearGradient(
                         begin: Alignment.topCenter,
                         end: Alignment.bottomCenter,
                         stops: [0.5, 1.0],
                         colors: deliveryGradients,
                         ),
                       borderRadius: BorderRadius.vertical(
                         bottom: Radius.circular(100),

                       ),
                     ),
                   ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).canvasColor,
                    radius: logoSize,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Image.asset('assets/images/logo_nikkey.png'),
                    ),
                  ),
                )
              ],

          ),
          ),
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                     const SizedBox(height: 40),
                    Text(
                        'Iniciar sessão',
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).inputDecorationTheme.labelStyle!.color,
                    ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 50),
                    Text(
                        'Usuario',
                    textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.caption?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).inputDecorationTheme.labelStyle!.color,
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: Theme.of(context).inputDecorationTheme.labelStyle!.color,
                        ),
                        hintText:'Usuario'),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Senha',
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.caption?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).inputDecorationTheme.labelStyle!.color,
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: Theme.of(context).inputDecorationTheme.labelStyle!.color,
                            
                          ),
                          hintText:'Senha'),

                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Novo usuario',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.caption?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).inputDecorationTheme.labelStyle!.color,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(20),
              child: InkWell(
                onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (_) => HomeScreen (),

                  ));
                },
                   child :Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.center,
                    colors: deliveryGradients,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Inciar',
                        style: TextStyle(
                       color: Colors.deepOrange,// nome iniciar
                  ),
                    textAlign: TextAlign.center,
                  ),
                ),

              ),
          )
          )
        ]
      ),
    );
  }
}
