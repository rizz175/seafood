import 'package:flutter/material.dart';
import 'package:seafood/constants.dart';
import 'package:seafood/createAccount.dart';
import 'package:seafood/homescreen.dart';

class loginscreen extends StatefulWidget {

  @override
  _loginscreenState createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {

  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
bool isChecked=false;
  String products="";
  String recipe="";
  String presentationType="";
  String productionQuantity="";

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(

      body:SingleChildScrollView(
        child:SafeArea(
          child: Padding(
            padding:EdgeInsets.symmetric(vertical:15,horizontal:15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,


              children: [
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  width:width*0.7,
                  child:Image.asset("images/logo.png"),
                ),
                SizedBox(height:height*0.05,),
                Container(
                  width:width*0.8,
                  color:lightcolor,
                  child:  TextFormField(
                      autofocus: false,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("Please Enter Your Email");
                        }
                        // reg expression for email validation
                        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                            .hasMatch(value)) {
                          return ("Please Enter a valid email");
                        }
                        return null;
                      },
                      controller:email,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:primaryColor),
                        ),    focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: primaryColor)),
                        prefixIcon: Icon(Icons.mail,color:primaryColor),
                        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                        hintText: "Email",
                        fillColor:lightcolor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      )),
                ),



                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  width:width*0.8,
                  color:lightcolor,
                  child:TextFormField(
                      autofocus: false,
                      obscureText: true,

                      controller:password,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:primaryColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(color:primaryColor)),
                        prefixIcon: Icon(Icons.vpn_key,color:primaryColor),
                        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                        hintText: "Password",

                        border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(6),

                        ),
                      )),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  width:width*0.8,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            activeColor:brown2,
                            value: isChecked,
                            onChanged: (value) {
                              isChecked = !isChecked;
                              setState(() {});
                            },
                          ),
                          Text(
                            "Remember Me",
                            style: TextStyle(color:primaryColor,fontWeight:FontWeight.bold),
                          ),
                        ],
                      ),
                      GestureDetector(
                          onTap: () {

                          },
                          child: Text(
                            "Forgot Password?",
                            textAlign: TextAlign.end, style: TextStyle(color:primaryColor,fontWeight:FontWeight.bold)
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                    height: 48,
                    width:width*0.8,
                    child: ElevatedButton(

                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>homescreen()));

                        },
                        child: Text("Login"),               style: ElevatedButton.styleFrom(primary:greenColor),),
                ),
                SizedBox(
                  height: height * 0.037,
                ),
                Container(
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?", style: TextStyle(color:primaryColor)
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => createAccount()),
                            );
                          },
                          child: Text(
                            "  Create one",
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
      ),
    );
  }
}
