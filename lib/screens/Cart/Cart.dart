import 'package:flutter/material.dart';
import 'package:sweetu/utils/constants.dart';
import 'package:sweetu/widgets/Bottom%20and%20top%20bars/AppBar.dart';
import 'package:sweetu/widgets/Buttons/Button.dart';
import 'package:sweetu/widgets/Counter/CQuantityCounter.dart';

import '../../widgets/Products/CProductCardVertical.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
    int count=0;

  void incCount(){
  setState(() {
    count++;
    });
}

  void decCount(){
  setState(() {
    count--;
    });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
        title: const Text(
          "Cart",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () => {},
              child: Icon(
                Icons.add,
                size: 35,
                color: ColorConstants.kpurple,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        child: Column(children: [

          //Price and no of Items
          SizedBox(
            width: double.infinity,
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text.rich(TextSpan(
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                      children: <InlineSpan>[
                        TextSpan(text: "7"),
                        TextSpan(text: " Items"),
                      ])),
                  Text.rich(
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      TextSpan(children: <InlineSpan>[
                        TextSpan(text: "₹"),
                        TextSpan(text: "2,892"),
                      ])),
                ]),
          ),
          //proceed to buy
          SizedBox(height: 16,),
          Button(message: "Proceed to buy", onPressed: (){}),
          SizedBox(height: 16,),
          const Divider(
                thickness: 2,
                color: Colors.black26,
              ),
              //price brand stock and Title
              const SizedBox(
                height: 16,
              ),

          Dismissible(
            onDismissed: (direction) => {},
            background: Container(
              color: Colors.red,
              child: GestureDetector(
                onTap: () => {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.delete,color: Colors.white, size: 50,),
                    SizedBox(width: 100,),
                    Icon(Icons.delete,color: Colors.white, size: 50,),
                  ],
                ),
              ),
            ),
            key: Key("2"),
           child: Card(
            margin: EdgeInsets.all(0),
            elevation: 5,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: SizedBox(
                        height: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image(
                              image: AssetImage("assets/images/catfood.png")),
                        )),
                ),
                Expanded(
                  flex: 4,
                  child:Column(
                    children: [
                       ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  "Whiskas Adult (+1 year) Dry Cat food , Ocean Fish Flavour, 3 kg pack",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("2k+ bought last month "),
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.ios_share)),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Slide to Delete", style: TextStyle(color: Colors.red,fontSize: 16),),
                  Counter(inc: incCount, dec: decCount, count: count),
                  
                ]
              )
                    ],
                  ) ,)
              ],
            ),
          )),

          Dismissible(
            onDismissed: (direction) => {},
            background: Container(
              color: Colors.red,
              child: GestureDetector(
                onTap: () => {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.delete,color: Colors.white, size: 50,),
                    SizedBox(width: 100,),
                    Icon(Icons.delete,color: Colors.white, size: 50,),
                  ],
                ),
              ),
            ),
            key: Key("3"),
           child: Card(
            margin: EdgeInsets.all(0),
            elevation: 5,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: SizedBox(
                        height: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image(
                              image: AssetImage("assets/images/catfood.png")),
                        )),
                ),
                Expanded(
                  flex: 4,
                  child:Column(
                    children: [
                       ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  "Whiskas Adult (+1 year) Dry Cat food , Ocean Fish Flavour, 3 kg pack",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("2k+ bought last month "),
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.ios_share)),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Slide to Delete", style: TextStyle(color: Colors.red,fontSize: 16),),
                  Counter(inc: incCount, dec: decCount, count: count),
                  
                ]
              )
                    ],
                  ) ,)
              ],
            ),
          ))
        ]),
      )),
    );
  }
}
