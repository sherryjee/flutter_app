import 'package:flutter/material.dart';



class first_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(

      child: Column(

        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(60.0),
          ),

          TextField(

            decoration: InputDecoration(
              hintText: 'Usermane',
              labelText: 'UserName',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.account_circle),


            ),

          ),
           Padding(
              padding: const EdgeInsets.all(30.0),),
    TextField(

    decoration: InputDecoration(
    hintText: 'Usermane',
    labelText: 'UserName',
    border: OutlineInputBorder(),
    prefixIcon: Icon(Icons.account_circle),
    ),

    ),
          Container(
            alignment: Alignment(1.0,0.0),
            padding: EdgeInsets.only(top:30.0 ,left: 20.0),
            child: InkWell(child: Text("forgot password",style: TextStyle(color: Colors.red,fontFamily: 'Montserrat',decoration: TextDecoration.underline),),),
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

                onTap: (){
                Navigator.of(context).pushNamed('/main_page');
                },
                child: Center(
                  child: Text("LOGIN", style: TextStyle(color: Colors.grey,
                  fontWeight:FontWeight.bold,
                  fontFamily: 'Montserrat')),
                )
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 20.0 ,top: 30.0, right: 20.0, bottom: 0.0),
            // mota kary ky liya
            //padding: const EdgeInsets.fromLTRB(70.0,20.0,70.0,0.0),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left:10.0,right: 10.0),
                child: Material(
                  borderRadius: BorderRadius.circular(50.0),
                  elevation: 5.0,
                  shadowColor: Colors.black,
                  color: Colors.deepOrange,
                  child: MaterialButton(
                    minWidth: 20.0,
                    height: 20.0,
                    onPressed: (){},
                    child: new Icon(
                      Icons.email,
                    ),
                  ),

                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:10.0,right: 10.0),
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
              )
            ],
          ),


        ],


      ),
      margin: EdgeInsets.only(left: 20.0 ,right: 20.0),

    );
  }



}