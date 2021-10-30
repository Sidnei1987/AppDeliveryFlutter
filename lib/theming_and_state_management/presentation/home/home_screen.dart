 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3_app/theming_and_state_management/presentation/home/products/products_screen.dart';
import 'package:untitled3_app/theming_and_state_management/presentation/theme.dart';


import '../theme.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
  class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, // alinhamento
        children: [
          Expanded(
              child: IndexedStack(
                index: currentIndex,
                children: [
                  Container(child:
                  ProductsScreen (1)
                  ), // primeiro index
                  Column(
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                    backgroundColor: DeliveryColor.yellow, // cor do circulo da home do logo
                    radius: 50,

                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset(
                        'assets/images/logo_nikkey.png',

                      ),
                    ),
                  ),
                      Text('Pastel de carne',
                      ),
                      CircleAvatar(
                        backgroundColor: DeliveryColor.yellow, // cor do circulo da home do logo
                        radius: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset(
                            'assets/images/logo_nikkey.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text('currentIndex3: $currentIndex'),
                  Text('currentIndex4: $currentIndex'),
                  Text('currentIndex5: $currentIndex'),
                ],
              ), //cor de fundo
             ),

          _DeliveryNavigationBar(
              index: currentIndex,
               onIndexSelected:(index){
                setState(() {
                  currentIndex = index;
                });
               }
          ),
            ],
          ),
    );
  }
}


class _DeliveryNavigationBar extends StatelessWidget {
   final int index;
   final ValueChanged <int> onIndexSelected;

  const _DeliveryNavigationBar({
    Key? key,
     required this.index, // ta diferente coloquei requiered
    required this.onIndexSelected, // ta diferente coloquei requiered
  }) : super(key: key);

    @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
                // cor do fundo do botão parte de baixo
         //color: Theme.of(context).deliveryGradients,
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors:deliveryGradients,
          ),

        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0), // tamanho do menu de baixo
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // alinha incon
            children: [
              Material(
                color: Colors.transparent,
              child : IconButton(
                icon: Icon(
                    Icons.home,
                  color: index == 0? DeliveryColor.grey : DeliveryColor.green,
                ), // botão parte de baixo  home_screen
                color: DeliveryColor.dark,
                  onPressed: () => onIndexSelected (0),
              ),
              ),
              Material(
                color: Colors.transparent,
             child: IconButton(
                icon: Icon(Icons.store, color: DeliveryColor.dark,),// botão parte de baixo
                onPressed: () => onIndexSelected (1),
              ),
              ),
              Material(
                color: Colors.transparent,
              child: CircleAvatar( //circulo no avatar
                backgroundColor: DeliveryColor.dark, // cor do circulo
              child:IconButton(
                icon: Icon(Icons.shopping_basket,color: DeliveryColor.orange,),// botão parte de baixo
                onPressed: () => onIndexSelected (2),
              ),
              ),
              ),
              Material(
                color: Colors.transparent,
              child:IconButton(
                icon: Icon(Icons.favorite_border,color: DeliveryColor.dark,),// botão parte de baixo
                onPressed: () => onIndexSelected (3),
              ),
              ),
              InkWell(
              onTap: () => onIndexSelected (4),
              child: CircleAvatar( // circulo do avatar
               radius: 10,
               backgroundColor: Colors.deepOrange ,// botão parte de baixo
              ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

