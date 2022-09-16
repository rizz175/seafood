import 'package:flutter/material.dart';
import 'package:seafood/constants.dart';
import 'package:seafood/loginscreen.dart';

class createAccount extends StatefulWidget {

  @override
  _createAccountState createState() => _createAccountState();
}

class _createAccountState extends State<createAccount> {

  TextEditingController fullname=TextEditingController();
  TextEditingController surname=TextEditingController();

  TextEditingController email=TextEditingController();

  TextEditingController direction=TextEditingController();

  TextEditingController pc=TextEditingController();
  TextEditingController location=TextEditingController();



  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar:AppBar(
        backgroundColor:secondryColor,
        title:Text("Register",style:TextStyle(fontWeight:FontWeight.w900)),
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        child:Padding(
          padding:EdgeInsets.symmetric(vertical:15,horizontal:15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height:height*0.03,),
              Text(
                "Full Name",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height:height*0.01,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),border:Border.all(color:primaryColor,width:2),
                    color: Colors.black12.withOpacity(0.02)),
                child:TextField(
                  controller: fullname,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white24,
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height:height*0.02,),
              Text(
                "Surname",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height:height*0.01,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),border:Border.all(color:primaryColor,width:2),
                    color: Colors.black12.withOpacity(0.02)),
                child:TextField(
                  controller: surname,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white24,
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height:height*0.02,),
              Text(
                "Email",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height:height*0.01,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),border:Border.all(color:primaryColor,width:2),
                    color: Colors.black12.withOpacity(0.02)),
                child:TextField(
                  controller: email,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white24,
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height:height*0.02,),
              Text(
                "Direction",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height:height*0.01,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),border:Border.all(color:primaryColor,width:2),
                    color: Colors.black12.withOpacity(0.02)),
                child:TextField(
                  controller:direction,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white24,
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height:height*0.02,),
              Text(
                "PC",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height:height*0.01,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),border:Border.all(color:primaryColor,width:2),
                    color: Colors.black12.withOpacity(0.02)),
                child:TextField(
                  controller: pc,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white24,
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height:height*0.02,),
              Text(
                "Location",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height:height*0.01,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),border:Border.all(color:primaryColor,width:2),
                    color: Colors.black12.withOpacity(0.02)),
                child:TextField(
                  controller:location,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white24,
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height:height*0.02,),
              Container(
                width:width,
                child:ElevatedButton(
                child:Text("Save"),onPressed:(){},  style: ElevatedButton.styleFrom(primary:secondryColor)
              ),),
              SizedBox(
                height: height * 0.027,
              ),
              Container(
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "Do have an account?", style: TextStyle(color:primaryColor)
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => loginscreen()),
                          );
                        },
                        child: Text(
                          "  Login",
                          style: TextStyle(
                              color: brown2,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
