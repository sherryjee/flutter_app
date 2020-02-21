import 'package:flutter/material.dart';


class Second_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50.0),
            ),
            TextField(

              decoration: InputDecoration(
                hintText: 'Usermane',
                labelText: 'UserName',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.account_circle),
              ),

            ),
            Padding(padding: const EdgeInsets.all(10.0),),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
                // mota karny ky liya
                // contentPadding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 20.0),
              ),
            ),
            Padding(padding: const EdgeInsets.all(10.0),),
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),

              ),
            ),
            SizedBox(height: 40.0,),
            Container(
              height: 40.0,
              width: 1001.0,
              child: Material(
                shadowColor: Colors.red,
                color: Colors.red,
                 borderRadius: BorderRadius.circular(20.0),
                 elevation: 10.0,
               child: GestureDetector(
                   onTap: (){},
                child: Center(
                 child: Text("REGISTER", style: TextStyle(color: Colors.grey,
                     fontWeight:FontWeight.bold, fontFamily: 'Montserrat')),)),),),
            Padding(
              padding: EdgeInsets.only(left:10.0,right: 10.0,top: 50.0),
              child: Material(
                borderRadius: BorderRadius.circular(50.0),
                elevation: 5.0,
                shadowColor: Colors.black,
                color: Colors.blue,
                child: MaterialButton(
                  minWidth: 20.0,
                  height: 20.0,
                  onPressed: (){},
                  child: new Icon(
                    Icons.add_call,
                  ),
                ),

              ),
            ),


    ]

      ),
      margin:  EdgeInsets.only(left: 20.0 ,right: 20.0),

    );
  }}









