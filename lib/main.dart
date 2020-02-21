import 'package:flutter/material.dart';
import 'package:flutter_app/Second_screen.dart';
import 'package:flutter_app/first_screen.dart';
import 'package:flutter_app/first_page.dart';
import 'package:flutter_app/main_page.dart';

void main () => runApp(login_Page());

// ignore: camel_case_types
class login_Page extends StatefulWidget{
  @override
  MyAppState  createState() => MyAppState();
// TODO: implement createState


}

class MyAppState  extends State<login_Page> with SingleTickerProviderStateMixin{
  TabController _tabController;
  ScrollController _scrollController;
  void initState(){
    _scrollController = new ScrollController();
    _tabController = new TabController(length: 2, vsync: this);
  }
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
       // '/first_page':(BuildContext context)=> new first_page(),
        '/main_page':(BuildContext context)=> new main_page(),
      },
      home: Scaffold(
        body: NestedScrollView(
          controller: _scrollController,
          // ignore: missing_return
          headerSliverBuilder: (BuildContext  context, bool innerBoxIsScrolled){
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.white70,
                title: Text(""),
                bottom: TabBar(
                  indicatorWeight: 5.0,
                  indicatorColor: Colors.red,
                  controller: _tabController,
                  tabs: <Widget>[
                    Tab(
                      child: Text('LOGIN',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 24,
                        ),
                      ),

                    ),
                    Tab(
                      child: Text('REGISTER',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 24,

                        ),
                      ),

                    ),

                  ],
                ),
              )
            ];
          },
          body: TabBarView(
            controller: _tabController ,
            children: <Widget>[
              first_screen(),
              Second_screen()

            ],


          ),

        ),



        //floatingActionButton: FloatingActionButton(
        //child: Icon(Icons.account_circle),
        //onPressed: (){},
        //),


      ),
    );
  }

}

