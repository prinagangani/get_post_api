
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_post_api/screens/home/modal/api_modal.dart';
import 'package:get_post_api/screens/home/provider/api_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ApiProvider? at, af;
  List addData = [];
  TextEditingController txtname = TextEditingController();
  TextEditingController txtprice = TextEditingController();
  TextEditingController txtrate = TextEditingController();
  TextEditingController txtcat = TextEditingController();
  TextEditingController txtdesc = TextEditingController();
  TextEditingController txtoffer = TextEditingController();

  @override
  Widget build(BuildContext context) {
    at = Provider.of<ApiProvider>(context, listen: true);
    af = Provider.of<ApiProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Add Product"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  controller: txtname,
                  decoration: InputDecoration(hintText: "Enter Name",
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder()),
                ), SizedBox(height: 20,),
                TextField(
                  controller: txtprice,
                  decoration: InputDecoration(hintText: "Enter Price",
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder()),
                ), SizedBox(height: 20,),
                TextField(
                  controller: txtrate,
                  decoration: InputDecoration(hintText: "Enter Rate",
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder()),
                ), SizedBox(height: 20,),
                TextField(
                  controller: txtdesc,
                  decoration: InputDecoration(hintText: "Enter Description",
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder()),
                ), SizedBox(height: 20,),
                TextField(
                  controller: txtoffer,
                  decoration: InputDecoration(hintText: "Enter Offer",
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder()),
                ), SizedBox(height: 20,),
                TextField(
                  controller: txtcat,
                  decoration: InputDecoration(hintText: "Enter Category",
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder()),
                ), SizedBox(height: 20,),
                ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.black),onPressed: () async {
                  String name = txtname.text;
                  String price = txtprice.text;
                  String rate = txtrate.text;
                  String desc = txtdesc.text;
                  String offer = txtoffer.text;
                  String cat = txtcat.text;
                  ProductModal p1 = ProductModal(
                    p_name: name,
                    p_price: price,
                    p_rate: rate,
                    p_desc: desc,
                    p_offer: offer,
                    p_category: cat,);
                  addData.add(p1);
                  at!.postApi(name,price,rate,desc,offer,cat);
                }, child: Text("Add")),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            Navigator.pushNamed(context, 'home');
          }, child: Icon(Icons.add),
        ),
      ),
    );
  }
}
