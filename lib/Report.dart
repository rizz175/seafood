import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:seafood/constants.dart';

import 'Addlot.dart';
import 'lotdetails.dart';

class Report extends StatefulWidget {

  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {

  TextEditingController productionDate=TextEditingController();
  String products="";
  String recipe="";
  String presentationType="";
  String productionQuantity="";
  final List<FlSpot> dummyData1 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index!! * Random().nextDouble());
  });

  // This will be used to draw the orange line
  final List<FlSpot> dummyData2 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar:AppBar(
        backgroundColor:secondryColor,
        title:Text("Report",style:TextStyle(fontWeight:FontWeight.w900),),
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        child:Padding(
          padding:EdgeInsets.symmetric(vertical:15,horizontal:15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height:height*0.01,),
              Text("Fish fillet green sauce",
                style:TextStyle(color:primaryColor,
                    fontSize:height*0.025),),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(child: Text("--------------------------------------------"),),
              ),
              SizedBox(height:height*0.01,),

              Text("LO:23232B0823232adsd3\nExpedition date:00/00/00 \nExpiration date:00/00/00 ,\n",
                style:TextStyle(color:primaryColor,
                    fontSize:height*0.020),),
              SizedBox(height:height*0.03,),
              Container(
                width:width,
                color:brown2,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text("INGREDIENT",
                    style:TextStyle(color:Colors.white,
                        fontWeight:FontWeight.bold,fontSize:height*0.025),),
                ),
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
              Container(
                width:width,
                color:primaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text("TEMPERATURE GRAPHIC",
                    style:TextStyle(color:Colors.white,
                        fontWeight:FontWeight.bold,fontSize:height*0.025),),
                ),
              ),
              SizedBox(height:height*0.05,),
              Container(

                height:height*0.2,
                child: LineChart(
                    LineChartData(
                      borderData: FlBorderData(show: false),
                      lineBarsData: [
                        // The red line
                        LineChartBarData(
                          spots: dummyData1,
                          isCurved: true,
                          barWidth: 3,
                          colors: [
                            Colors.black,
                          ],
                        ),
                        // The orange line
                        LineChartBarData(
                          spots: dummyData2,
                          isCurved: true,
                          barWidth: 3,
                          colors: [
                            secondryColor,
                          ],
                        ),
                        // The blue line

                      ],
                    )),
              ),
              SizedBox(height:height*0.07,),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Text("Estimated Consumption date",style:TextStyle(fontWeight:FontWeight.bold,color:Colors.black),)
                  ,  Text("April 3 ,2022",style:TextStyle(color:Colors.black))
                ],
              ),
              SizedBox(height:height*0.02,),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Text("Consumption Variation",style:TextStyle(fontWeight:FontWeight.bold,color:Colors.black),)
                  ,  Text("+2 days",style:TextStyle(color:secondryColor,fontWeight:FontWeight.bold))
                ],
              ),
              SizedBox(height:height*0.03,),

            ],
          ),
        ),
      ),
    );
  }
}
