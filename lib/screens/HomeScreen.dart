
import 'package:flutter/material.dart';
import 'package:sweetu/widgets/AppBar.dart';
import 'package:sweetu/widgets/InputField.dart';
import 'package:sweetu/widgets/Products/CProductCardVertical.dart';

import '../utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int CurrIndex = 0;
  TextEditingController searchQuery = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
        title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Welcome To Sweetu",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            "Rehan Qazi",
            style: TextStyle(fontSize: 20, color: ColorConstants.kpurple),
          )
        ]),
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_bag),
                color: ColorConstants.kpurple,
              ),
              Positioned(
                  right: 0,
                  child: Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(100)),
                    child: const Center(
                      child: Text(
                        "10",
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                    ),
                  ))
            ],
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  flex: 2,
                  child: InputField(
                    controller: searchQuery,
                    hintText: "Search Sweetu",
                    supportText: "",
                  )),
              Expanded(
                flex: 0,
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.only(top: 10, bottom: 30, end: 20),
                  child: TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.menu,
                      size: 30,
                      color: ColorConstants.kpurple,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "All",
                        style: TextStyle(color: ColorConstants.kpurple),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Cats",
                        style: TextStyle(color: ColorConstants.kpurple),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Fishes",
                        style: TextStyle(color: ColorConstants.kpurple),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Birds",
                        style: TextStyle(color: ColorConstants.kpurple),
                      )),
                ]),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: GridView.builder(
                itemCount: 6,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    mainAxisExtent: 301
                    ),
                itemBuilder: (_, index) => const CProductCardVertical(),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
