import 'package:flutter/material.dart';
import 'package:flutter_app_fth_new/Transaction_History/last_month.dart';
import 'package:flutter_app_fth_new/Transaction_History/this_month_estimation.dart';

class WalletBalance extends StatefulWidget {
  @override
  _WalletBalanceState createState() => _WalletBalanceState();
}

class _WalletBalanceState extends State<WalletBalance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
         Center(
           child: Column(
             children: [ SizedBox(
               height: 5,
             ),
               Text('Wallet Balance',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold ),),
               Text('Rs.0',style: TextStyle(fontSize: 25),)],
           ),
         )
        ],
      )),
    );
  }
}
