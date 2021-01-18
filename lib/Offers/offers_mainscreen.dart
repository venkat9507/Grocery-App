import 'package:flutter/material.dart';
import 'package:flutter_app_fth_new/Bottom_nav_bar/delivery_status.dart';
import 'package:flutter_app_fth_new/Bottom_nav_bar/wallet.dart';
import 'package:flutter_app_fth_new/Offers/Offers.dart';

class OffersMainScreen extends StatefulWidget {
  @override
  _OffersMainScreenState createState() => _OffersMainScreenState();
}

class _OffersMainScreenState extends State<OffersMainScreen> {
  int currentTab = 0;
  Widget currentScreen = Offers();
  final PageStorageBucket bucket = PageStorageBucket();
  final List<Widget> screens = [
    Offers(),
    ActivatedOffers(),

  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF7653A3),
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back_ios),
            onPressed: (){
              Navigator.pop(context);
            },),
          title: Text("Offers"),
        ),
        body: SafeArea(child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          currentScreen = Offers();
                          currentTab= 0;

                        });
                      },
                      child: Text('Offers',style: TextStyle(color: currentTab ==0 ? Theme.of(context).primaryColor : Colors.black,fontSize: 20 ),)),
                ),
                MaterialButton(
                  onPressed: (){
                    setState(() {
                      currentScreen = ActivatedOffers();
                      currentTab=1;
                    });
                  },
                  child: Text(' Activated Offers',style:TextStyle(color: currentTab == 1 ? Theme.of(context).primaryColor : Colors.black,fontSize: 20 )),)
              ],
            ),
            Expanded(child: PageStorage(bucket: bucket, child: currentScreen)),
          ],
        )),
      ),
    );
  }
}
