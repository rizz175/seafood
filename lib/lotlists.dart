import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seafood/constants.dart';

import 'Addlot.dart';
import 'lotdetails.dart';

class lotlists extends StatefulWidget {

  @override
  _lotlistsState createState() => _lotlistsState();
}

class _lotlistsState extends State<lotlists> {

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
        title:Text("LOT LIST",style:TextStyle(fontWeight:FontWeight.w900),),
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        child:Padding(
          padding:EdgeInsets.symmetric(vertical:15,horizontal:15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Container(
                    width:width*0.8,
                    height:40,
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),border:Border.all(color:primaryColor,width:2),

                        color:Colors.white
                    ),
                    child:Padding(
                      padding: const EdgeInsets.symmetric(horizontal:18.0),
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Search"),Icon(CupertinoIcons.search,size:19,)
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                      onTap:(){

                      },
                      child: Container(

                         
                          decoration:BoxDecoration(
                            color:primaryColor,
                            borderRadius: BorderRadius.circular(6)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("images/filter.png",color:Colors.white,width:25,height:20,),
                          )))
                ],
              ),
              SizedBox(height:height*0.03,),
              Container(
                color: lightbrown,
                child: Padding(
                  padding: const EdgeInsets.only(left:15.0,top:8.0,bottom:8,right:26),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Lots",style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize:height*0.027),)
                      ,   Text("State",style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize:height*0.027),)


                    ],
                  ),
                ),
              ),

              SizedBox(height:height*0.01,),
              ListView(
shrinkWrap: true,
                children: [
                  GestureDetector(
                    onTap:(){
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => lotdetails()),
                      );
                    },
                    child: Container(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:15.0,vertical:8.0),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            Text("SBRAM43HJDAJD23HJASHDJASD233",style:TextStyle(color:Colors.black,fontSize:height*0.013),)
                            ,GestureDetector(
                              onTap:(){
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => lotdetails()),
                                );
                              },
                              child: Container(
                                  color:brown2,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal:8.0,vertical:3),
                                    child: Text("Transit",style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize:height*0.014),),
                                  )),
                            )


                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(height:0.3,color:primaryColor,),
                  GestureDetector(
                    onTap:(){
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => lotdetails()),
                      );
                    },
                    child: Container(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:15.0,vertical:8.0),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            Text("SBRAM43HJDAJD23HJASHDJASD233",style:TextStyle(color:Colors.black,fontSize:height*0.013),)
                            ,GestureDetector(
                              onTap:(){
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => lotdetails()),
                                );
                              },
                              child: Container(
                                  color:primaryColor,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal:8.0,vertical:3),
                                    child: Text("Warehouse",style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize:height*0.014),),
                                  )),
                            )


                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(height:0.3,color:primaryColor,),
                  GestureDetector(
                    onTap:(){
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => lotdetails()),
                      );
                    },
                    child: Container(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:15.0,vertical:8.0),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            Text("SBRAM43HJDAJD23HJASHDJASD233",style:TextStyle(color:Colors.black,fontSize:height*0.013),)
                            ,GestureDetector(
                              onTap:(){
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => lotdetails()),
                                );
                              },
                              child: Container(
                                  color:brown2,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal:8.0,vertical:3),
                                    child: Text("Transit",style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize:height*0.014),),
                                  )),
                            )


                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(height:0.3,color:primaryColor,),
                  GestureDetector(
                    onTap:(){
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => lotdetails()),
                      );
                    },
                    child: Container(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:15.0,vertical:8.0),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            Text("SBRAM43HJDAJD23HJASHDJASD233",style:TextStyle(color:Colors.black,fontSize:height*0.013),)
                            ,GestureDetector(
                              onTap:(){
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => lotdetails()),
                                );
                              },
                              child: Container(
                                  color:Colors.red,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal:8.0,vertical:3),
                                    child: Text("Incidence",style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize:height*0.014),),
                                  )),
                            )


                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(height:0.3,color:primaryColor,),
                  GestureDetector(
                    onTap:(){
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => lotdetails()),
                      );
                    },
                    child: Container(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:15.0,vertical:8.0),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            Text("SBRAM43HJDAJD23HJASHDJASD233",style:TextStyle(color:Colors.black,fontSize:height*0.013),)
                            ,Container(
                                color:Colors.green,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal:8.0,vertical:3),
                                  child: Text("Recieved",style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize:height*0.014),),
                                ))


                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(height:0.3,color:primaryColor,),
                  GestureDetector(
                    onTap:(){
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => lotdetails()),
                      );
                    },
                    child: Container(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:15.0,vertical:8.0),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            Text("SBRAM43HJDAJD23HJASHDJASD233",style:TextStyle(color:Colors.black,fontSize:height*0.013),)
                            ,Container(
                                color:primaryColor,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal:8.0,vertical:3),
                                  child: Text("Warehouse",style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize:height*0.014),),
                                ))


                          ],
                        ),
                      ),
                    ),
                  ),


                ],
              )

            ],
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {

          Navigator.push(context, MaterialPageRoute(builder: (context)=>addlot()));

        },
        backgroundColor:greenColor,
        child: const Icon(Icons.add),
      ),
    );
  }
}
