import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_13/Apiflutter/apiservice.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: FutureBuilder(
        future: ApiService().getAllproduct(),
        builder: (context, snapshot) {
          if(snapshot.hasData){
            return Center(
              child:ListView.builder(itemCount: snapshot.data.length,
              itemBuilder: (context,index){
                return ListTile(
                  leading: Image.network(snapshot.data[index]['image'],height: 40,width: 50,),
                  title: Text(snapshot.data[index]['title']),
                  subtitle: Text("\$"+snapshot.data[index]['price'].toString()),

                  onTap: () {
                    
                  },
                );
              }
             ),
              );
          }
        },
      ),
    );
  }
}
