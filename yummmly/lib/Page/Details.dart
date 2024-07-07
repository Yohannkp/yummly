import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:glass/glass.dart';
import 'package:yummly/Page/Utils/HeroWidget.dart';
class Details extends StatelessWidget {
  String asset ;
  Details({required this.asset});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff292c29),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 12,
                child: HeroWidget(
                  tag: "image",
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50)),
                      color: Colors.green,
                      image: DecorationImage(
                        image: AssetImage("$asset"),fit: BoxFit.fitHeight
                      )

                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(38.0),
                          child: Row(

                            children: [
                              GestureDetector(
                                onTap:(){
                                  Navigator.pop(context);
                  },
                                child: Container(
                                  height: size.height*0.055,
                                  width: size.width/8,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        width: 0.2,
                                        color: Colors.grey
                                    ),

                                  ),
                                  child: Icon(Icons.arrow_back,color: Colors.white,size: 20,),
                                ),
                              ),
                              Spacer(),

                              Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.deepOrange
                                  ),
                                  child: Center(child: Text("Yummly",style: TextStyle(color: Colors.white,fontSize: 30,fontFamily: "Pacifico"),)),
                                ),

                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                  height: size.height*0.055,
                                  width: size.width/8,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        width: 0.2,
                                        color: Colors.grey
                                    ),

                                  ),
                                  child: Icon(CupertinoIcons.square_favorites_alt,color: Colors.white,size: 20,),
                                ),

                            ],
                          ),
                        ),
                        Expanded(child: Container()),
                        Container(
                          width: size.width,
                          height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50)),



                            ),

                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Text("Tangerines Pancakes",style: TextStyle(color: Colors.white,fontSize: 20),),
                                Row(

                                  children: [
                                    Icon(CupertinoIcons.star_fill,color: Colors.deepOrange,size: 25,),
                                    SizedBox(width: 3,),
                                    Icon(CupertinoIcons.star_fill,color: Colors.deepOrange,size: 25,),
                                    SizedBox(width: 3,),
                                    Icon(CupertinoIcons.star_fill,color: Colors.deepOrange,size: 25,),
                                    SizedBox(width: 3,),
                                    Icon(CupertinoIcons.star_fill,color: Colors.deepOrange,size: 25,),
                                    SizedBox(width: 3,),
                                    Icon(CupertinoIcons.star_fill,color: Colors.deepOrange,size: 25,),
                                  ],
                                ),

                                Row(

                                  children: [
                                    Container(
                                      width:size.width/1.5,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            children: [
                                              Text("10",style: TextStyle(color: Colors.white),),
                                              Text("Ingredents",style: TextStyle(color: Colors.grey))
                                            ],
                                          ),
                                          Container(
                                            width: 1,
                                            height: 25,
                                            color: Colors.grey,
                                          ),
                                          Column(
                                            children: [
                                              Text("25",style: TextStyle(color: Colors.white)),
                                              Text("Minutes",style: TextStyle(color: Colors.grey))
                                            ],
                                          ),

                                          Container(
                                            width: 1,
                                            height: 25,
                                            color: Colors.grey,
                                          ),
                                          Column(
                                            children: [
                                              Text("280",style: TextStyle(color: Colors.white)),
                                              Text("Calories",style: TextStyle(color: Colors.grey))
                                            ],
                                          )
                                        ],
                                      )
                                    ),
                                    Spacer(),
                                    Container(
                                      height: size.height*0.055,
                                      width: size.width/8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            width: 0.2,
                                            color: Colors.grey
                                        ),

                                      ),
                                      child: Icon(Icons.date_range,color: Colors.white,size: 20,),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ).asGlass(
                          clipBorderRadius: BorderRadius.all(Radius.circular(50))
                        )
                      ],
                    ),
                  ),
                )),
            Expanded(
                flex: 8,
                child: Padding(
                  padding: const EdgeInsets.only(left: 0,right: 20),
                  child: Container(
                    width: size.width,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text("Ingredients",style: TextStyle(color: Colors.grey,fontSize: 20),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: size.width/3,

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("US",style: TextStyle(color: Colors.deepOrange,fontSize: 15),),
                                      Container(width: 1,height: 15,color: Colors.grey,),
                                      Text("METRIC",style: TextStyle(color: Colors.grey,fontSize: 15),)
                                    ],

                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Text("Servings",style: TextStyle(color: Colors.grey),),
                                      Icon(Icons.location_on_sharp,color: Colors.white,size: 20,),
                                      Icon(Icons.edit_calendar_outlined,color: Colors.deepOrange,)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: ListTile(
                              leading: Icon(CupertinoIcons.add_circled,color: Colors.white,),
                              title: Text("1 cuillère de cone sugar",style: TextStyle(color: Colors.white),),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 1,
                              width: size.width/1.3,
                              color: Colors.grey,
                            ),
                          ),




                          Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: ListTile(
                              leading: Icon(CupertinoIcons.add_circled,color: Colors.white,),
                              title: Text("1 cuillère de Riz",style: TextStyle(color: Colors.white),),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 1,
                              width: size.width/1.3,
                              color: Colors.grey,
                            ),
                          ),




                          Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: ListTile(
                              leading: Icon(CupertinoIcons.add_circled,color: Colors.white,),
                              title: Text("1 cuillère papier",style: TextStyle(color: Colors.white),),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 1,
                              width: size.width/1.3,
                              color: Colors.grey,
                            ),
                          ),





                          Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: ListTile(
                              leading: Icon(CupertinoIcons.add_circled,color: Colors.white,),
                              title: Text("1 cuillère de pop corn",style: TextStyle(color: Colors.white),),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 1,
                              width: size.width/1.3,
                              color: Colors.grey,
                            ),
                          ),




                          Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: ListTile(
                              leading: Icon(CupertinoIcons.add_circled,color: Colors.white,),
                              title: Text("1 cuillère de glan",style: TextStyle(color: Colors.white),),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 1,
                              width: size.width/1.3,
                              color: Colors.grey,
                            ),
                          ),





                          Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: ListTile(
                              leading: Icon(CupertinoIcons.add_circled,color: Colors.white,),
                              title: Text("1 cuillère de sauce tomate",style: TextStyle(color: Colors.white),),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 1,
                              width: size.width/1.3,
                              color: Colors.grey,
                            ),
                          ),





                          Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: ListTile(
                              leading: Icon(CupertinoIcons.add_circled,color: Colors.white,),
                              title: Text("3 cuillères de miels",style: TextStyle(color: Colors.white),),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 1,
                              width: size.width/1.3,
                              color: Colors.grey,
                            ),
                          ),




                          Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: ListTile(
                              leading: Icon(CupertinoIcons.add_circled,color: Colors.white,),
                              title: Text("2 cuillère de bonne laka",style: TextStyle(color: Colors.white),),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 1,
                              width: size.width/1.3,
                              color: Colors.grey,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                )




            ),
            Expanded(
                flex: 2,
                child: Container(color: Colors.black26,
                child: Container(
                  width: size.width,
                  height: size.height/9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xff252625)
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: size.height*0.055,
                        width: size.width/8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 0.2,
                              color: Colors.grey
                          ),

                        ),
                        child: Icon(CupertinoIcons.cart,color: Colors.white,size: 20,),
                      ),
                      Text("Shop Ingrediants",style: TextStyle(color: Colors.deepOrange),),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Colors.red,
                              Colors.deepOrange
                            ],
                            stops: [0.1,0.9]
                          )
                        ),
                        height: 50,
                        width: size.width/3,
                        child: Center(
                          child: Text("GET DIRECTIONS",style: TextStyle(color: Colors.white),),
                        ),
                      )
                    ],
                  ),


                )
                )),

          ],
        ),
      ),
    );
  }
}
