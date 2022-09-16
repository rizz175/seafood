import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seafood/Addlot.dart';
import 'package:seafood/constants.dart';
import 'package:seafood/loginscreen.dart';
import 'package:seafood/lotdetails.dart';
import 'package:seafood/lotlists.dart';

import 'createAccount.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      body:SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:EdgeInsets.symmetric(vertical:15,horizontal:15),
            child:Column(
            children: [
              Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
             GestureDetector(
                 onTap:(){
                   Navigator.push(
                     context,
                     new MaterialPageRoute(
                         builder: (context) => createAccount()),
                   );
                 },
                 child: Icon(FontAwesomeIcons.userPlus,color:primaryColor,size:24,)),
             Icon(Icons.settings,color:primaryColor,size:30,)
           ],),

              Container(
                width:width*0.5,
                child:Image.asset("images/logo.png"),
              ),
              SizedBox(height:height*0.03,),
//buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Container(
                      width:width*0.43,
                      height:height*0.06,
                      child: ElevatedButton(onPressed:(){


                        Navigator.push(context, MaterialPageRoute(builder: (context)=>addlot()));

                      }, child:Text("Add new lot",style:TextStyle(fontSize:height*0.027),)))
               , Container(
                      width:width*0.43,
                      height:height*0.06,
                      child: ElevatedButton(onPressed:(){

                        Navigator.push(context, MaterialPageRoute(builder: (context)=>lotlists()));

                      }, child:Text("Lot list",style:TextStyle(fontSize:height*0.027),)))

                ],
              ),
              SizedBox(height:height*0.03,),
              //list
              Container(
                width:width,
                height: height*0.4,
                decoration:BoxDecoration(
                  color:lightPurple,border:Border.all(color:primaryColor,width:1)
                ),
                child:Column(
                  children: [
                    Container(
                      color: lightbrown,
                      child: Padding(
                        padding: const EdgeInsets.only(left:15.0,top:8.0,bottom:8,right:27),
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
                    Container(
                      height:height*0.33,
                      child:ListView(

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
                      ),
                    )

                  ],
                ),
              ),
              SizedBox(height:height*0.04,),
              Container(
                child:Image.asset("images/mainlogo.png"),
              )

            ],
          ),
        )),
      ),
    );
  }
}
