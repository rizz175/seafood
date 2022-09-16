import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:seafood/constants.dart';

import 'Addlot.dart';
import 'lotdetails.dart';

class shippingDetails extends StatefulWidget {

  @override
  _shippingDetailsState createState() => _shippingDetailsState();
}

class _shippingDetailsState extends State<shippingDetails> {

  TextEditingController productionDate=TextEditingController();
  String products="";
  String recipe="";
  String presentationType="";
  String productionQuantity="";

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar:AppBar(
        backgroundColor:secondryColor,
        title:Text("Shipping Detail",style:TextStyle(fontWeight:FontWeight.w900),),
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        child:Padding(
          padding:EdgeInsets.symmetric(vertical:15,horizontal:15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height:height*0.03,),
              Text("REMITENTE",
                style:TextStyle(color:primaryColor,
                    fontWeight:FontWeight.bold,fontSize:height*0.025),),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(height:0.3,color:primaryColor,),
              ),
              SizedBox(height:height*0.02,),
              Text("PEPITO GRILLO SL",
                style:TextStyle(color:Colors.black,
                    fontWeight:FontWeight.bold,fontSize:height*0.020),),
              SizedBox(height:height*0.01,),
              Text("B08232323\nCarolina Martinez Iglesias\nCallie de las palanganas 8,\n45609 Vigo, Ponteyedra",
                style:TextStyle(color:Colors.black87,
                    fontSize:height*0.020),),
              SizedBox(height:height*0.03,),
              Text("RECEPTOR",
                style:TextStyle(color:primaryColor,
                    fontWeight:FontWeight.bold,fontSize:height*0.025),),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(height:0.3,color:primaryColor,),
              ),  SizedBox(height:height*0.02,),
              Text("PEPITO GRILLO SL",
                style:TextStyle(color:Colors.black,
                    fontWeight:FontWeight.bold,fontSize:height*0.020),),
              SizedBox(height:height*0.01,),
              Text("B08232323\nCarolina Martinez Iglesias\nCallie de las palanganas 8,\n45609 Vigo, Ponteyedra",
                style:TextStyle(color:Colors.black87,
                    fontSize:height*0.020),),
              SizedBox(height:height*0.03,),
              Text("SCAN THE QR CODE AND LOT WILL UPDATED",
                style:TextStyle(color:primaryColor,
                    fontWeight:FontWeight.bold,fontSize:height*0.025),),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(height:0.3,color:primaryColor,),
              ),
              SizedBox(height:height*0.03,),
              Center(
                child: QrImage(
                  data: "1234567890",
                  version: QrVersions.auto,
                  size: height*0.25,backgroundColor:secondryColor,foregroundColor:Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
