import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:yummly/Page/Details.dart';
import 'package:yummly/Page/Utils/HeroWidget.dart';
class Acceuil extends StatefulWidget {
  const Acceuil({super.key});

  @override
  State<Acceuil> createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> with TickerProviderStateMixin{
  List<double> animationContainer = [
    20,
    20,
    20,
    20,
  ];
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    bool home = true;
    int CurrentPage = 0 ;
    TabController _tabController = new TabController(length: 3, vsync: this);
    PageController _pageController = new PageController(initialPage: 0,viewportFraction: 0.8);


    void animationchanged(int index){

      for(int i = 0; i<animationContainer.length;i++){
        if(i == index){
          setState(() {
            animationContainer[index] = 0;
          });
          print(animationContainer);
        }else{
          setState(() {
            animationContainer[i] = 20;
          });
        }
      }
      print(animationContainer);
    }
    return Scaffold(
      backgroundColor: Color(0xff292c29),
      body: SafeArea(
        child: Container(
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff292c29)
                  ),
                      
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Container(
                                  width: size.width,

                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Yummly",style: TextStyle(color: Colors.deepOrange,fontSize: 30,fontFamily: "pacifico"),),
                                      Text("What do you want to cook today?",style: TextStyle(color: Colors.white,fontSize: 20),),
                                      Row(
                                        children: [
                                          Container(
                                            height: size.height*0.07,
                                            width: size.width/2,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Color(0xff252625),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(Icons.search,color: Colors.grey,),
                                                Text("Search For Recipes",style: TextStyle(color: Colors.grey),),
                                                SizedBox()
                                              ],
                                            ),
                                          ),
                                          Expanded(child: Container(

                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  height: size.height*0.07,
                                                  width: size.width/6,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    border: Border.all(
                                                      width: 0.2,
                                                      color: Colors.grey
                                                    ),

                                                  ),
                                                  child: Icon(CupertinoIcons.settings,color: Colors.white,),
                                                ),
                                                Container(
                                                  height: size.height*0.07,
                                                  width: size.width/6,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    border: Border.all(
                                                      width: 0.2,
                                                      color: Colors.grey
                                                    ),

                                                  ),
                                                  child: Icon(CupertinoIcons.arrow_up_arrow_down,color: Colors.white,),
                                                ),
                                              ],
                                            ),
                                          ))
                                        ],
                                      )

                                    ],
                                  ),
                          ),
                              )),
                          Expanded(
                              flex: 7,
                              child: Column(
                                children: [
                                  Container(
                                    child: TabBar(
                                      indicatorWeight: 2,
                                      indicatorSize: TabBarIndicatorSize.label,
                                      indicatorPadding: EdgeInsets.only(left: 20,right: 20),
                                      controller: _tabController,
                                      dividerColor: Color(0xff292c29),
                                      tabs: [
                                        Tab(
                                          child: Text("Newest Foods",style: TextStyle(fontFamily: "Pacifico"),),
                                        ),

                                        Tab(
                                          child: Text("Best Recipes",style: TextStyle(fontFamily: "Pacifico")),
                                        ),

                                        Tab(
                                          child: Text("Popular",style: TextStyle(fontFamily: "Pacifico")),
                                        ),

                                      ],
                                    ),
                                  ),


                                  Expanded(
                                    child: LayoutBuilder(builder: (context,cons){
                                      print(size.height);
                                      print(cons.maxHeight);
                                      return Padding(
                                        padding: const EdgeInsets.all(28.0),
                                        child: Container(
                                          child: PageView(
                                            onPageChanged: (value){
                                              print(value);
                                              animationchanged(value);
                                            },
                                            controller: _pageController,

                                            children: [
                                              GestureDetector(
                                                onTap:(){
                                          Navigator.push(context, MaterialPageRoute(builder: (builder)=>Details(asset: "lib/assets/images/vegetables-g09cf83d13_1920.jpg")));
                                        },
                                                child: HeroWidget(
                                                  tag: "image",
                                                  child: AnimatedPadding(
                                                    padding:  EdgeInsets.all(animationContainer[0]),
                                                    duration: Duration(milliseconds: 200),
                                                    child: AnimatedContainer(

                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(30),
                                                        image: DecorationImage(
                                                            image: AssetImage("lib/assets/images/vegetables-g09cf83d13_1920.jpg"),fit: BoxFit.fitHeight
                                                        ),

                                                      ),
                                                      duration: Duration(seconds: 2),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [

                                                          Padding(
                                                            padding: const EdgeInsets.all(20.0),

                                                            child: Container(

                                                                width: 50,
                                                                  height: 50,
                                                                  decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(20),

                                                                  ),
                                                                  child: Center(child: Icon(CupertinoIcons.square_favorites_alt,color: Colors.white,)))
                                                                  .asGlass(
                                                                blurX: 3,
                                                                blurY: 3,
                                                                clipBorderRadius: BorderRadius.circular(15.0),
                                                              ),

                                                          ),

                                                          Stack(
                                                            clipBehavior: Clip.none,
                                                            children: [
                                                              Container(
                                                                width: cons.maxWidth,
                                                                height: cons.maxHeight/6,
                                                                decoration: BoxDecoration(

                                                                ),
                                                                child: Stack(
                                                                  clipBehavior: Clip.none,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsets.all(20.0),
                                                                      child: Column(
                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                        children: [
                                                                          Row(

                                                                            children: [
                                                                              Icon(CupertinoIcons.star_fill,color: Colors.deepOrange,size: 15,),
                                                                              SizedBox(width: 3,),
                                                                              Icon(CupertinoIcons.star_fill,color: Colors.deepOrange,size: 15,),
                                                                              SizedBox(width: 3,),
                                                                              Icon(CupertinoIcons.star_fill,color: Colors.deepOrange,size: 15,),
                                                                              SizedBox(width: 3,),
                                                                              Icon(CupertinoIcons.star_fill,color: Colors.deepOrange,size: 15,),
                                                                              SizedBox(width: 3,),
                                                                              Icon(CupertinoIcons.star_fill,color: Colors.deepOrange,size: 15,),
                                                                            ],
                                                                          ),
                                                                          Text("Salade defruits",style: TextStyle(color: Colors.white,fontFamily: "Pacifico"),)
                                                                        ],
                                                                      ),
                                                                    ),

                                                                  ],
                                                                ),
                                                              ).asGlass(
                                                                blurX: 3,
                                                                blurY: 3,
                                                                clipBorderRadius: BorderRadius.circular(30),),

                                                              Positioned(
                                                                  bottom: MediaQuery.of(context).size.height/15,
                                                                  left: MediaQuery.of(context).size.width/2.2,
                                                                  child: Container(
                                                                      width: 50,
                                                                      height: 50,
                                                                      decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(10),
                                                                        color: Colors.deepOrange
                                                                      ),
                                                                      child: Center(child: Text("Yummly",style: TextStyle(color: Colors.white,fontSize: 30,fontFamily: "Pacifico"),)),
                                                                    ),
                                                                  )
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),

                                              GestureDetector(
                                                onTap: (){
                                                  Navigator.push(context, MaterialPageRoute(builder: (builder)=>Details(asset: "lib/assets/images/coffee-beans-gafe2c3c35_1920.jpg")));
                                                },
                                                child: AnimatedPadding(
                                                  padding:  EdgeInsets.all(animationContainer[1]),
                                                  duration: Duration(milliseconds: 200),
                                                  child: AnimatedContainer(

                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(30),
                                                      image: DecorationImage(
                                                          image: AssetImage("lib/assets/images/coffee-beans-gafe2c3c35_1920.jpg"),fit: BoxFit.fitHeight
                                                      ),

                                                    ),
                                                    duration: Duration(seconds: 2),
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [

                                                        Padding(
                                                          padding: const EdgeInsets.all(20.0),
                                                          child: Container(

                                                              width: 50,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(20),

                                                              ),
                                                              child: Center(child: Icon(CupertinoIcons.square_favorites_alt,color: Colors.white,)))
                                                              .asGlass(
                                                            blurX: 3,
                                                            blurY: 3,
                                                            clipBorderRadius: BorderRadius.circular(15.0),
                                                          ),
                                                        ),

                                                        Stack(
                                                          clipBehavior: Clip.none,
                                                          children: [
                                                            Container(
                                                              width: cons.maxWidth,
                                                              height: cons.maxHeight/6,
                                                              decoration: BoxDecoration(

                                                              ),
                                                              child: Stack(
                                                                clipBehavior: Clip.none,
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsets.all(20.0),
                                                                    child: Column(
                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                      children: [
                                                                        Row(

                                                                          children: [
                                                                            Icon(CupertinoIcons.star_fill,color: Colors.deepOrange,size: 15,),
                                                                            SizedBox(width: 3,),
                                                                            Icon(CupertinoIcons.star_fill,color: Colors.deepOrange,size: 15,),
                                                                            SizedBox(width: 3,),
                                                                            Icon(CupertinoIcons.star_fill,color: Colors.deepOrange,size: 15,),
                                                                            SizedBox(width: 3,),
                                                                            Icon(CupertinoIcons.star_fill,color: Colors.deepOrange,size: 15,),
                                                                            SizedBox(width: 3,),
                                                                            Icon(CupertinoIcons.star_fill,color: Colors.deepOrange,size: 15,),
                                                                          ],
                                                                        ),
                                                                        Text("Tasse de café",style: TextStyle(color: Colors.white,fontFamily: "Pacifico"),)
                                                                      ],
                                                                    ),
                                                                  ),

                                                                ],
                                                              ),
                                                            ).asGlass(
                                                              blurX: 3,
                                                              blurY: 3,
                                                              clipBorderRadius: BorderRadius.circular(30),),

                                                            Positioned(
                                                                bottom: MediaQuery.of(context).size.height/15,
                                                                left: MediaQuery.of(context).size.width/2.2,
                                                                child: Container(
                                                                  width: 50,
                                                                  height: 50,
                                                                  decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(10),
                                                                      color: Colors.deepOrange
                                                                  ),
                                                                  child: Center(child: Text("Yummly",style: TextStyle(color: Colors.white,fontSize: 30,fontFamily: "Pacifico"),)),
                                                                ))
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),

                                              GestureDetector(
                                                onTap: (){
                                                  Navigator.push(context, MaterialPageRoute(builder: (builder)=>Details(asset: "lib/assets/images/raspberries-g03b2949c3_1920.jpg")));
                                                },
                                                child: AnimatedPadding(
                                                  padding:  EdgeInsets.all(animationContainer[2]),
                                                  duration: Duration(milliseconds: 200),
                                                  child: AnimatedContainer(

                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(30),
                                                      image: DecorationImage(
                                                          image: AssetImage("lib/assets/images/raspberries-g03b2949c3_1920.jpg"),fit: BoxFit.fitHeight
                                                      ),

                                                    ),
                                                    duration: Duration(seconds: 2),
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [

                                                        Padding(
                                                          padding: const EdgeInsets.all(20.0),
                                                          child: Container(

                                                              width: 50,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(20),

                                                              ),
                                                              child: Center(child: Icon(CupertinoIcons.square_favorites_alt,color: Colors.white,)))
                                                              .asGlass(
                                                            blurX: 3,
                                                            blurY: 3,
                                                            clipBorderRadius: BorderRadius.circular(15.0),
                                                          ),
                                                        ),

                                                        Stack(
                                                          clipBehavior: Clip.none,
                                                          children: [
                                                            Container(
                                                              width: cons.maxWidth,
                                                              height: cons.maxHeight/6,
                                                              decoration: BoxDecoration(

                                                              ),
                                                              child: Stack(
                                                                clipBehavior: Clip.none,
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsets.all(20.0),
                                                                    child: Column(
                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                      children: [
                                                                        Row(

                                                                          children: [
                                                                            Icon(CupertinoIcons.star_fill,color: Colors.deepOrange,size: 15,),
                                                                            SizedBox(width: 3,),
                                                                            Icon(CupertinoIcons.star_fill,color: Colors.deepOrange,size: 15,),
                                                                            SizedBox(width: 3,),
                                                                            Icon(CupertinoIcons.star_fill,color: Colors.deepOrange,size: 15,),
                                                                            SizedBox(width: 3,),
                                                                            Icon(CupertinoIcons.star_fill,color: Colors.deepOrange,size: 15,),
                                                                            SizedBox(width: 3,),
                                                                            Icon(CupertinoIcons.star_fill,color: Colors.deepOrange,size: 15,),
                                                                          ],
                                                                        ),
                                                                        Text("Salade de fraises",style: TextStyle(color: Colors.white,fontFamily: "Pacifico"),)
                                                                      ],
                                                                    ),
                                                                  ),

                                                                ],
                                                              ),
                                                            ).asGlass(
                                                              blurX: 3,
                                                              blurY: 3,
                                                              clipBorderRadius: BorderRadius.circular(30),),

                                                            Positioned(
                                                                bottom: MediaQuery.of(context).size.height/15,
                                                                left: MediaQuery.of(context).size.width/2.2,
                                                                child: Container(
                                                                  width: 50,
                                                                  height: 50,
                                                                  decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(10),
                                                                      color: Colors.deepOrange
                                                                  ),
                                                                  child: Center(child: Text("Yummly",style: TextStyle(color: Colors.white,fontSize: 30,fontFamily: "Pacifico"),)),
                                                                ))
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),


                                              GestureDetector(
                                                onTap: (){
                                                  Navigator.push(context, MaterialPageRoute(builder: (builder)=>Details(asset: "lib/assets/images/spaghetti-gcfe17b96d_1920.jpg")));
                                                },
                                                child: AnimatedPadding(
                                                  padding:  EdgeInsets.all(animationContainer[3]),
                                                  duration: Duration(milliseconds: 200),
                                                  child: AnimatedContainer(

                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(30),
                                                      image: DecorationImage(
                                                          image: AssetImage("lib/assets/images/spaghetti-gcfe17b96d_1920.jpg"),fit: BoxFit.fitHeight
                                                      ),

                                                    ),
                                                    duration: Duration(seconds: 2),
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [

                                                        Padding(
                                                          padding: const EdgeInsets.all(20.0),
                                                          child: Container(

                                                              width: 50,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(20),

                                                              ),
                                                              child: Center(child: Icon(CupertinoIcons.square_favorites_alt,color: Colors.white,)))
                                                              .asGlass(
                                                            blurX: 3,
                                                            blurY: 3,
                                                            clipBorderRadius: BorderRadius.circular(15.0),
                                                          ),
                                                        ),

                                                        Stack(
                                                          clipBehavior: Clip.none,
                                                          children: [
                                                            Container(
                                                              width: cons.maxWidth,
                                                              height: cons.maxHeight/6,
                                                              decoration: BoxDecoration(

                                                              ),
                                                              child: Stack(
                                                                clipBehavior: Clip.none,
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsets.all(20.0),
                                                                    child: Column(
                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                      children: [
                                                                        Row(

                                                                          children: [
                                                                            Icon(CupertinoIcons.star_fill,color: Colors.deepOrange,size: 15,),
                                                                            SizedBox(width: 3,),
                                                                            Icon(CupertinoIcons.star_fill,color: Colors.deepOrange,size: 15,),
                                                                            SizedBox(width: 3,),
                                                                            Icon(CupertinoIcons.star_fill,color: Colors.deepOrange,size: 15,),
                                                                            SizedBox(width: 3,),
                                                                            Icon(CupertinoIcons.star_fill,color: Colors.deepOrange,size: 15,),
                                                                            SizedBox(width: 3,),
                                                                            Icon(CupertinoIcons.star_fill,color: Colors.deepOrange,size: 15,),
                                                                          ],
                                                                        ),
                                                                        Text("Spaguetti boloniaise",style: TextStyle(color: Colors.white,fontFamily: "Pacifico"),)
                                                                      ],
                                                                    ),
                                                                  ),

                                                                ],
                                                              ),
                                                            ).asGlass(
                                                              blurX: 3,
                                                              blurY: 3,
                                                              clipBorderRadius: BorderRadius.circular(30),),

                                                            Positioned(
                                                                bottom: MediaQuery.of(context).size.height/15,
                                                                left: MediaQuery.of(context).size.width/2.2,
                                                                child: Container(
                                                                  width: 50,
                                                                  height: 50,
                                                                  decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(10),
                                                                      color: Colors.deepOrange
                                                                  ),
                                                                  child: Center(child: Text("Yummly",style: TextStyle(color: Colors.white,fontSize: 30,fontFamily: "Pacifico"),)),
                                                                ))
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),






                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                                  )

                                ],
                              )),


                        ],
                      ),
                )),







                
                //Bottom nav bar
                Container(
                  width: size.width,
                  height: size.height/9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xff252625)
                  ),
                  
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.home,color: Colors.grey,),
                      Icon(Icons.search,color: Colors.grey,),
                      Icon(Icons.shopping_cart,color: Colors.grey,),
                      Icon(Icons.man,color: Colors.grey,),
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
