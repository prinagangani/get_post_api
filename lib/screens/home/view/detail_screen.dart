

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_post_api/screens/home/modal/api_modal.dart';
import 'package:provider/provider.dart';

import '../provider/api_provider.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  ApiProvider? at, af;
  @override
  Widget build(BuildContext context) {
    at = Provider.of<ApiProvider>(context, listen: true);
    af = Provider.of<ApiProvider>(context, listen: false);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home Screen"),
        backgroundColor: Colors.black,
      ),
          body: FutureBuilder(
            future: at!.getApi(),
            builder: (context, snapshot) {
              if(snapshot.hasError)
                {
                  return Text("${snapshot.error}");
                }
              else if(snapshot.hasData)
                {
                  List<dynamic>? productModel = snapshot.data;
                  return ListView.builder(itemCount: productModel!.length,itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(height: 50,width: 50,child: Image.asset("assets/images/phone.jpeg",fit: BoxFit.cover,)),
                      title: Text("${af!.jsonList[index].p_name}"),
                      subtitle: Text("${af!.jsonList[index].p_price}"),
                      trailing: Text("${af!.jsonList[index].p_rate}"),
                    );
                  },);
                }
              return Center(child: CircularProgressIndicator());
            },
          ),
    ));
  }
}