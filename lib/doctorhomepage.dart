import 'package:flutter/material.dart';
import 'list.dart';
import 'profile.dart';
//import 'Medicine.dart';
//import 'reminder.dart';
import 'chatHomePage.dart';
import 'Patientlist.dart';


void main(List<String>args){
  runApp(new MaterialApp(
    home:MyApp1(),
  ));
}
class MyApp1 extends StatefulWidget{
  @override
  _MyAppState createState()=>_MyAppState();
}
class _MyAppState extends State<MyApp1>
{
  int _currentIndex=0;
  final tabs=[
    Center(child:Container(
      width:1000,
      height:1000,
      padding: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(10),
            child:InkWell(
              onTap: (){
                runApp(HomeScreen1());
              },
              splashColor: Colors.green,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children:<Widget>[
                    Icon(Icons.list,
                        size: 70,
                        color: Colors.red),
                    Text('Patient\'s List',style : new TextStyle(fontSize:17))
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            child:InkWell(
              onTap: (){
                runApp(new ChatHomePage());
              },
              splashColor: Colors.green,
              child: Center(
                child: Column(

                  mainAxisSize: MainAxisSize.min,
                  children:<Widget>[
                    Icon(Icons.message,
                        size: 70,
                        color: Colors.red),
                    Text('Chat',style : new TextStyle(fontSize:17))
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            child:InkWell(
              onTap: (){
                //jun vayenii euta page banayera graph wala haldeu esma
              },
              splashColor: Colors.green,
              child: Center(
                child: Column(

                  mainAxisSize: MainAxisSize.min,
                  children:<Widget>[
                    Icon(Icons.store,
                        size: 70,
                        color: Colors.red),
                    Text('Patient flow and Profit',style : new TextStyle(fontSize:17))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    )),
    Center(child:Container(
      width:1000,
      height:1000,
      padding: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Card(

            margin: EdgeInsets.all(10),
            child:InkWell(
              splashColor: Colors.green,
              child: Row(

                mainAxisSize: MainAxisSize.min,
                children:<Widget>[
                  Icon(Icons.call,
                      size:60,
                      color: Colors.red),
                  Text('    98xxxx0xx1',style : new TextStyle(fontSize:17))
                ],
              ),

            ),
          ),
          Card(

            margin: EdgeInsets.all(10),
            child:InkWell(
              splashColor: Colors.green,
              child: Row(

                mainAxisSize: MainAxisSize.min,
                children:<Widget>[
                  Icon(Icons.mail,
                      size: 60,
                      color: Colors.red),
                  Text('    MedOn@gmail.com',style : new TextStyle(fontSize:17))
                ],
              ),
            ),
          ),


        ],
      ),
    )),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(
        title: Center(
          child:Text('MedOn'),
        ), backgroundColor: Colors.red,),
      backgroundColor: Colors.grey[200],
      drawer: new Drawer(
          child:ListView(
              children:<Widget>[
                UserAccountsDrawerHeader(
                  accountName: new Text("Dr.Nandu Patahak",style:new TextStyle(fontWeight: FontWeight.bold)),
                  accountEmail:new Text("doctor@gmail.com"),
                  decoration: new BoxDecoration(color: Colors.red),
                ),
                ListTile(
                  leading:Icon(Icons.person),
                  title:Text('Profile'),
                ),
                ListTile(
                  leading:Icon(Icons.vpn_key),
                  title:Text('Password'),
                ),


              ]
          )
      ),
      body:
      tabs[_currentIndex],
      bottomNavigationBar : BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blueGrey,
            icon: Icon(Icons.help),
            title: Text('Help'),
          ),
        ],
        onTap: (index)
        {
          setState(() {
            _currentIndex=index;
          });
        },
      ),
    );
  }

}
