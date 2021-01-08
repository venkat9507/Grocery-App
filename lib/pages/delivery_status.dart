import 'package:flutter/material.dart';
import 'package:flutter_app_fth_new/pages/store.dart';

class DeliveryStatus extends StatefulWidget {
  @override
  _DeliveryStatusState createState() => _DeliveryStatusState();
}

class _DeliveryStatusState extends State<DeliveryStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.location_on),
        title: Text('Upcoming'),
      ),
      body: SafeArea(child: Column(
        children: [
          Container(
            color: Color(0xFFf1ecf8),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Days(day: "Su",order: '00',),
                    Days(day: "Mo",order: '00',),
                    Days(day: "Tu",order: '00',),
                    Days(day: "We",order: '00',),
                    Days(day: "Th",order: '00',),
                    Days(day: "Fr",order: '00',),
                    Days(day: "Sa",order: '00',),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 72,
          ),
          Center(
            child: Container(
              height: 321,
              width: 321,
              child: Image(image: AssetImage('images/DeliveryVehicle.png')),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text('No Scheduled Deliveries',style: TextStyle(color: Color(0xFF7653A3),fontWeight: FontWeight.bold,fontSize: 20),),
          Text('Browse through the store and add items',style: Theme.of(context).textTheme.bodyText2,),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 42,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),color: Colors.grey.shade300
            ),
            child: FlatButton(hoverColor: Colors.black,
                onPressed: (){
                 setState(() {
                   Store();
                 });
                }, child: Text('Go To Store',style: TextStyle(color: Color(0xFF7653A3)))),
          )
        ],
      )),
    );
  }
}

class Days extends StatelessWidget {
  String day;
  String order;
   Days({
    Key key,this.day,
    this.order,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(day,style: TextStyle(color: Color(0xFF7653A3),fontWeight: FontWeight.bold,fontSize: 15)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8,bottom: 8,right: 8),
          child: Text(order,style: TextStyle(color: Color(0xFF7653A3),fontWeight: FontWeight.bold,fontSize: 15)),
        ),
      ],
    );
  }
}
