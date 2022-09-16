import 'package:flutter/material.dart';
import 'package:seafood/constants.dart';

class addlot extends StatefulWidget {

  @override
  _addlotState createState() => _addlotState();
}

class _addlotState extends State<addlot> {

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
        title:Text("ADD LOT",style:TextStyle(fontWeight:FontWeight.w900)),
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        child:Padding(
          padding:EdgeInsets.symmetric(vertical:15,horizontal:15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Lot details",
                style:TextStyle(color:primaryColor,
                    fontWeight:FontWeight.bold,fontSize:height*0.03),),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(height:0.3,color:primaryColor,),
              ),

              SizedBox(height:height*0.02,),

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
              SizedBox(height:height*0.03,),
              Text(
                "Products",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height:height*0.01,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),border:Border.all(color:primaryColor,width:2),
                    color: Colors.black12.withOpacity(0.02)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    hint: products == ""
                        ? Padding(
                      padding: const EdgeInsets.only(left: 11.0),
                      child: Text(''),
                    )
                        : Padding(
                      padding: const EdgeInsets.only(left: 11.0),
                      child: Text(
                        products,
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
                          products= val.toString();

                        },
                      );
                    },
                  ),
                ),
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
              Text("Labels Nearby ",
                style:TextStyle(color:primaryColor,
                    fontWeight:FontWeight.bold,fontSize:height*0.025),),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(height:0.3,color:primaryColor,),
              ),

              SizedBox(height:height*0.02,),
              ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  color:primaryColor,
                ),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) => Container(
                  child: ListTile(
                    title:Text("LABEL 051762163712316273617",style:TextStyle(fontSize:height*0.014,fontWeight:FontWeight.bold),),
                     trailing:Container(
                       width:width*0.16,
                       color:greenColor,
                       child: Padding(
                         padding: const EdgeInsets.all(2.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Icon(Icons.add,color:Colors.white,size:18,),
                             Text("Add",style:TextStyle(color:Colors.white),)
                           ],
                         ),
                       ),
                     ),

                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
