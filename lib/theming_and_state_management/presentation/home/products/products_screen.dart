import 'package:flutter/material.dart';
import 'package:untitled3_app/list/in_memory_products.dart';
import 'product_preco.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen (Object bool, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

  @override
  Widget  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Products',
        ),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 6,mainAxisExtent: 4,childAspectRatio: 1.0,mainAxisSpacing: 1,
          ),
          itemCount: product!.length,
          itemBuilder:(context, index){

            

            final  product;
            if (false) {
            } else {
              product = true;
            }
            return _ItemProduct(
              product: product,
              );
    } ,
    ),
    );
  }

 class _ItemProduct extends StatelessWidget {
   const _ItemProduct({Key? key, required this.product}) : super(key: key);
    final Product product;

   @override
   Widget build(BuildContext context) {
     return Card(
       elevation: 12,
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
           children: [
             Image.asset(
                   product.images
             ),
             Text(product.name),
             Text(product.description),
             Text('\${product.price}USD'),
           ],
         ),
       ),
     );
   }
 }


