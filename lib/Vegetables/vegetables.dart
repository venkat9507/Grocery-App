import 'dart:convert';

import 'package:flutter/material.dart';

class Vegetables extends StatefulWidget {
  @override
  _VegetablesState createState() => _VegetablesState();
}

class _VegetablesState extends State<Vegetables> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: vegetables()
      ),
    );
  }
}


class vegetables extends StatefulWidget {
  @override
  _vegetablesState createState() => _vegetablesState();
}

class _vegetablesState extends State<vegetables> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF7653A3),
      ),
     home :  Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('Vegetables'),
        actions: [
          IconButton(
            onPressed: (){

            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: (){

            },
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString('json_data/data.json'),
          builder: (context,snapshot){
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            else
               {
                 var data = json.decode(snapshot.data.toString());
                 return  Column(
                     children: [
                       Container(
                         color: Colors.grey.shade400,
                         height: 50,
                         width: MediaQuery.of(context).size.width,
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             Text('All'),
                             Text('Orinko'),
                             Text('Vegetables'),

                           ],
                         ),
                       ),
                       GridView.builder(
                           gridDelegate:
                       SliverGridDelegateWithFixedCrossAxisCount(
                       crossAxisCount: 2),
                         itemCount: 6,
                         scrollDirection: Axis.vertical,
                         shrinkWrap: true,
                           itemBuilder: (BuildContext context, int index) =>
                               InkWell(
                                 child: Column(
                                   children: [
                                     Image.network(data[index]['imgUrl'],
                                         fit: BoxFit.scaleDown,
                                         height: size.width * 0.3),
                                     new Text(data[index]['name']),
                                   ],
                                 ),
                               ),
                       )
                     ],
                   );

               }
          }
          )
    ),
    );
  }
}
