import 'package:flutter/material.dart';
import 'package:hadi/src/tools/Stagger.dart';







class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  String current = "main";
  TabController tabController;

  final scKey = GlobalKey <ScaffoldState>();
  Map <String , SliverAppBar> myAppBar ;


  Animation animation ;
  AnimationController animationController;

  playingAnim() async {
    try{
      await animationController.forward();
      await animationController.reverse();

    }on TickerCanceled{}

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(
      vsync: this,
      length: 4,
    );
    SliverAppBar mainAppBar = SliverAppBar(

      pinned: true,
      floating: true,
      actions: <Widget>[
       InkWell(
         child:   Icon(Icons.search),
         onTap: (){
           setState((){
             current = "search";
           });
         },
       ),
        PopupMenuButton <String>(
          color: Colors.red,
          onSelected: (String choice){
            print(choice);
          },
          itemBuilder: (BuildContext context){
            return[
              PopupMenuItem(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text("سلام"),
                ),
                value: "2",
              )
            ];
          },
        )
      ],
      bottom: TabBar(
        controller: tabController,
        tabs: <Widget>[
          Text("بازی",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 19),),
          Text("بازی",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 19),),
          Text("بازی",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 19),),
          Text("بازی",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 19),),

        ],

      ),
      title: Text("venous"),
      leading: Icon(Icons.menu,color: Colors.white,),
      elevation: 4,

    );
    SliverAppBar searchAppbar = SliverAppBar(
      pinned: true,
      floating: true,
      actions: <Widget>[
        InkWell(
          child: Icon(Icons.arrow_back),
          onTap: (){
          setState((){
            current = "main";
          });
          },
        ),
      ],

      title: Text("venous"),
      leading: Icon(Icons.menu,color: Colors.white,),
      elevation: 4,

    );

    myAppBar = {
     "main" : mainAppBar ,
     "search" : searchAppbar ,
    };
    animationController = new AnimationController(
      vsync: this,
      duration: new Duration(seconds: 1)
    );




  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: NestedScrollView(

        headerSliverBuilder: (BuildContext context , bool innerBoxIsScrolled){
          return <Widget>[
            myAppBar[current]
          ];
        },
        body: TabBarView(
          controller: tabController,
          children: <Widget>[
            Center(
              child: GestureDetector(
                onTap: (){
                  playingAnim();
                },
                child: Container(
                  width : 200,
                  height : 200,
                  decoration: BoxDecoration(

                    color: Colors.black.withOpacity(.1),
                    border: Border.all(color: Colors.red,width: 2)
                  ),
                  child: StaggerAnimation(
                    controller : animationController.view
                  ),
                ),
              ),

            ),
            Center(
              child: Text("ssss",style: TextStyle(color: Colors.red),),
            ) ,
            Center(
              child: Text("ssss",style: TextStyle(color: Colors.red),),
            ),
            Center(
              child: Text("ssss",style: TextStyle(color: Colors.red),),
            )

          ],
        ),
      )
    );
  }
}



