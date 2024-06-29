import 'package:flutter/material.dart';
import 'package:sweetu/utils/constants.dart';
import 'package:sweetu/widgets/Bottom%20and%20top%20bars/AppBar.dart';

import '../../widgets/Products/CProductCardVertical.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CAppBar(
        title: const Text("Cart",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),),
        actions: [Container(
          margin:const EdgeInsets.all(10),
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(onTap: () => {},  child: Icon(Icons.add, size: 35, color: ColorConstants.kpurple,),),
        )],
        
      ),
      body: SingleChildScrollView(
        child: Container(  
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              GridView.builder(
                itemCount: 6,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    mainAxisExtent: 301
                    ),
                itemBuilder: (_, index) => CProductCardVertical(selected: index%2==0?true:false),

              ),
            ]
            )
        )
      ),
    );
  }
}