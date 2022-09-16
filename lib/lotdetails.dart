import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seafood/Report.dart';
import 'package:seafood/constants.dart';
import 'package:seafood/shippingDetail.dart';

class lotdetails extends StatefulWidget {

  @override
  _lotdetailsState createState() => _lotdetailsState();
}

class _lotdetailsState extends State<lotdetails> {

  TextEditingController productionDate=TextEditingController();
  String products="";
  String recipe="";
  String presentationType="";
  String productionQuantity="";
// Generate some dummy data for the cahrt
  // This will be used to draw the red line
  final List<FlSpot> dummyData1 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index! * Random().nextDouble());
  });

  // This will be used to draw the orange line
  final List<FlSpot> dummyData2 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  // This will be used to draw the blue line
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar:AppBar(
        backgroundColor:secondryColor,
        title:Text("LOT DATA",style:TextStyle(fontWeight:FontWeight.w900)),
        centerTitle: true,
      ),
      body:Stack(
        children: [

          Container(
            width:width,
            height: height,
            child: SingleChildScrollView(
              child:Padding(
                padding:EdgeInsets.symmetric(vertical:15,horizontal:15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [


                    Container(
                      color: lightbrown,
                      child: Padding(
                        padding: const EdgeInsets.all(13),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: [
                            Text("LOT:SBAMASDHSA5232323232323223",style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize:height*0.017),)


                          ],
                        ),
                      ),
                    ),
                    SizedBox(height:height*0.012,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Individual Label :",
                              style:TextStyle(color:primaryColor,
                                  fontWeight:FontWeight.bold,fontSize:height*0.016),),
                            Text("121313123123",
                              style:TextStyle(color:Colors.black,
                                  fontWeight:FontWeight.bold,fontSize:height*0.016),)
                          ],
                        ),
                        Row(
                          children: [
                            Text("Shipping Information :",
                              style:TextStyle(color:primaryColor,
                                  fontWeight:FontWeight.bold,fontSize:height*0.016),),
                            Text("NP 13123123",
                              style:TextStyle(color:Colors.black,
                                  fontWeight:FontWeight.bold,fontSize:height*0.016),)
                          ],
                        )

                      ],),
                    SizedBox(height:height*0.015,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width:width*0.23,
                          color:primaryColor,
                          child:Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center
                              ,crossAxisAlignment:CrossAxisAlignment.center,
                              children: [
                                Icon(FontAwesomeIcons.boxesPacking,color:Colors.white,size:height*0.03,),
                                Text("Departure",style:TextStyle(color:Colors.white,fontSize: height*0.014),)
                              ],
                            ),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios,color:Colors.black,size:height*0.03,),
                        Container(
                          width:width*0.23,
                          color:brown2,
                          child:Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center
                              ,crossAxisAlignment:CrossAxisAlignment.center,
                              children: [
                                Icon(FontAwesomeIcons.person,color:Colors.white,size:height*0.03,),
                                Text("Transit",style:TextStyle(color:Colors.white,fontSize: height*0.014),)
                              ],
                            ),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios,color:Colors.black,size:height*0.03,),

                        Container(
                          width:width*0.23,
                          color:secondryColor,
                          child:Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center
                              ,crossAxisAlignment:CrossAxisAlignment.center,
                              children: [
                                Icon(FontAwesomeIcons.boxArchive,color:Colors.white,size:height*0.03,),
                                Text("Delievered",style:TextStyle(color:Colors.white,fontSize: height*0.014),)
                              ],
                            ),
                          ),
                        ),


                      ],
                    ),
                    SizedBox(height:height*0.03,),
                    Text("Lot details",
                      style:TextStyle(color:primaryColor,
                          fontWeight:FontWeight.bold,fontSize:height*0.02),),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(height:0.3,color:primaryColor,),
                    ),


                    SizedBox(height:height*0.02,),
                    Text(
                      "Recipe",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height:height*0.01,),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),border:Border.all(color:primaryColor,width:2),
                          color: Colors.black12.withOpacity(0.02)),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          hint: recipe == ""
                              ? Padding(
                            padding: const EdgeInsets.only(left: 11.0),
                            child: Text(''),
                          )
                              : Padding(
                            padding: const EdgeInsets.only(left: 11.0),
                            child: Text(
                              recipe,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          isExpanded: true,
                          iconSize: 30.0,
                          style: TextStyle(color: Colors.black),
                          items: ["ad","asd","asd","assd"].map(
                                (val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Text(val.toString()),
                              );
                            },
                          ).toList(),
                          onChanged: (val) {
                            setState(
                                  () {
                                recipe= val.toString();

                              },
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(height:height*0.02,),
                    Text(
                      "Presentation Type",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height:height*0.01,),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),border:Border.all(color:primaryColor,width:2),
                          color: Colors.black12.withOpacity(0.02)),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          hint: presentationType == ""
                              ? Padding(
                            padding: const EdgeInsets.only(left: 11.0),
                            child: Text(''),
                          )
                              : Padding(
                            padding: const EdgeInsets.only(left: 11.0),
                            child: Text(
                              presentationType,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          isExpanded: true,
                          iconSize: 30.0,
                          style: TextStyle(color: Colors.black),
                          items: ["ad","asd","asd","assd"].map(
                                (val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Text(val.toString()),
                              );
                            },
                          ).toList(),
                          onChanged: (val) {
                            setState(
                                  () {
                                presentationType= val.toString();

                              },
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(height:height*0.02,),
                    Text(
                      "Production Quantity",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height:height*0.01,),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),border:Border.all(color:primaryColor,width:2),

                          color: Colors.black12.withOpacity(0.02)),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          hint: productionQuantity == ""
                              ? Padding(
                            padding: const EdgeInsets.only(left: 11.0),
                            child: Text(' '),
                          )
                              : Padding(
                            padding: const EdgeInsets.only(left: 11.0),
                            child: Text(
                              productionQuantity,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          isExpanded: true,
                          iconSize: 30.0,
                          style: TextStyle(color: Colors.black),
                          items: ["ad","asd","asd","assd"].map(
                                (val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Text(val.toString()),
                              );
                            },
                          ).toList(),
                          onChanged: (val) {
                            setState(
                                  () {
                                productionQuantity= val.toString();

                              },
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(height:height*0.02,),
                    Text(
                      "Production Date",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height:height*0.01,),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),border:Border.all(color:primaryColor,width:2),
                          color: Colors.black12.withOpacity(0.02)),
                      child: TextField(
                        controller: productionDate,
                        onTap: () async {
                          DateTime selectedDate = DateTime.now();

                          final DateTime? selected = await showDatePicker(
                            context: context,
                            initialDate: selectedDate,
                            firstDate: DateTime(2010),
                            lastDate: DateTime(2025),
                          );
                          if (selected != null && selected != selectedDate)
                            setState(() {
                              selectedDate = selected;
                              productionDate.text =
                                  selectedDate.toString().substring(0, 10);
                            });
                        },
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white24,
                            border: InputBorder.none,
                            hintText: productionDate.text,
                            suffixIcon: Icon(Icons.calendar_today_outlined)),
                      ),
                    ),

                    SizedBox(height:height*0.03,),
                    Text("Temperature and Consumption ",
                      style:TextStyle(color:primaryColor,
                          fontWeight:FontWeight.bold,fontSize:height*0.02),),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(height:0.3,color:primaryColor,),
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
                    SizedBox(height:height*0.05,),
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
                    SizedBox(height:height*0.02,),
                    Text("Labels ",
                      style:TextStyle(color:primaryColor,
                          fontWeight:FontWeight.bold,fontSize:height*0.02),),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(height:0.3,color:primaryColor,),
                    ),
                    SizedBox(height:height*0.03,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap:(){
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => shippingDetails()),
                            );
                          },
                          child: Row(
                            children: [
                              Image.asset("images/pdficon.png",width:40,height:40,),
                              Text("Shipping Label",
                                style:TextStyle(color:Colors.black,
                                    fontWeight:FontWeight.bold,fontSize:height*0.016),)
                            ],
                          ),
                        ),
                        SizedBox(width:40,),
                        GestureDetector(
                          onTap:(){
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => Report()),
                            );
                          },
                          child: Row(
                            children: [
                              Image.asset("images/pdficon.png",width:40,height:40,),
                              Text("Report",
                                style:TextStyle(color:Colors.black,
                                    fontWeight:FontWeight.bold,fontSize:height*0.016),)
                            ],
                          ),
                        ),

                      ],),


                    SizedBox(height:height*0.04,),
                    Container(
                      width:width,
                      child:Row(
                        children: [
                          Container(
                            width:width*0.25,
                            child:Text("STATUS",style:TextStyle(fontWeight:FontWeight.bold,fontSize:height*0.02,color:primaryColor),),
                          ),

                          Container(
                            width:width*0.25,
                            child:Text("Delievered",style:TextStyle(fontWeight:FontWeight.bold,fontSize:height*0.02,color:secondryColor),),
                          ),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,bottom:8),
                      child: Container(height:0.3,color:primaryColor,),
                    ),

                    ListView.separated(
                      separatorBuilder: (context, index) => Divider(
                        color:primaryColor,
                      ),
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context, index) => Container(
                        child:Container(
                          width:width,
                          child:Row(
                            children: [
                              Container(
                                width:width*0.25,
                                child:Text("Departure date",style:TextStyle(fontWeight:FontWeight.bold,fontSize:height*0.016),),
                              ),
                              Container(
                                width:width*0.25,
                                child:Text("07-04-2022",style:TextStyle(fontWeight:FontWeight.bold,fontSize:height*0.016),),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height:height*0.03,),
                    Text("UPDATES ",
                      style:TextStyle(color:primaryColor,
                          fontWeight:FontWeight.bold,fontSize:height*0.02),),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(height:0.3,color:primaryColor,),
                    ),

                    SizedBox(height:height*0.02,),
                    Container(
                      width:width,
                      child:Row(
                        children: [
                          Container(
                            width:width*0.25,
                            child:Text("Date",style:TextStyle(fontWeight:FontWeight.bold,fontSize:height*0.016,color:primaryColor),),
                          ),
                          Container(
                            width:width*0.25,
                            child:Text("Time",style:TextStyle(fontWeight:FontWeight.bold,fontSize:height*0.016,color:primaryColor),),
                          ),
                          Container(
                            width:width*0.25,
                            child:Text("Situation",style:TextStyle(fontWeight:FontWeight.bold,fontSize:height*0.016,color:primaryColor),),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,bottom:8),
                      child: Container(height:0.3,color:primaryColor,),
                    ),

                    ListView.separated(
                      separatorBuilder: (context, index) => Divider(
                        color:primaryColor,
                      ),
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context, index) => Container(
                        child:Container(
                          width:width,
                          child:Row(
                            children: [
                              Container(
                                width:width*0.25,
                                child:Text("07-04-2022",style:TextStyle(fontWeight:FontWeight.bold,fontSize:height*0.016),),
                              ),
                              Container(
                                width:width*0.25,
                                child:Text("16.00",style:TextStyle(fontWeight:FontWeight.bold,fontSize:height*0.016),),
                              ),
                              Container(
                                width:width*0.25,
                                child:Text("Delievered",style:TextStyle(fontWeight:FontWeight.bold,fontSize:height*0.016,color:greenColor),),
                              )
                            ],
                          ),
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
          ),
          Positioned(
              bottom:0,
              child:Container(
            width:width,

            color: primaryColor,
                child:Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            shape:BoxShape.circle
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(CupertinoIcons.pencil,color:primaryColor,),
                          )),
                      Container(
                          decoration: BoxDecoration(
                              color:Colors.white,
                              shape:BoxShape.circle
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(CupertinoIcons.settings,color:primaryColor,),
                          )),
                      Container(
                          decoration: BoxDecoration(
                              color:Colors.white,
                              shape:BoxShape.circle
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(CupertinoIcons.refresh_bold,color:primaryColor,),
                          )),
                      Container(
                          decoration: BoxDecoration(
                              color:Colors.white,
                              shape:BoxShape.circle
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.analytics,color:primaryColor,),
                          )),
                      Container(
                          decoration: BoxDecoration(
                              color:Colors.white,
                              shape:BoxShape.circle
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(CupertinoIcons.bookmark,color:primaryColor,),
                          )),
                      Container(
                          decoration: BoxDecoration(
                              color:Colors.white,
                              shape:BoxShape.circle
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(CupertinoIcons.share,color:primaryColor,),
                          )),
                    ],
                  ),
                ),
          ))
        ],
      ),
    );
  }
}
