// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(const  MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Assignment 1",
      home: MyStatefulWidget(),
    );
  }
}
class MyStatefulWidget extends StatefulWidget{
  const MyStatefulWidget({super.key});

  @override
  State<StatefulWidget> createState() =>_MyStatefulWidgetState();
}
class _MyStatefulWidgetState extends State<MyStatefulWidget>{
  int _selectedIndex=0;
  static const TextStyle optionStyle=TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions=<Widget>[

    Container(
      child: Column(
          children:[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: const Text("    9:14"),
                  ),
                  Container(
                    width: 400,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(Icons.network_cell),
                        Icon(Icons.wifi),
                        Icon(Icons.battery_3_bar)
                      ],
                    ),
                  )

                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 400,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        const CircleAvatar(
                          radius: 30,
                          backgroundImage:
                          NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGZDKEjfdhYICTYcdyM4SgWv8QNSQ2KBXYzOxHVreFreIFWBHl2JCgyQjyApPitiXi-DA&usqp=CAU'),
                        ),
                        Column(
                          children: const [
                            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                                child:Text("Sita Nepali",style: TextStyle(fontSize: 17),))

                          ],
                        )
                      ],
                    ),
                  ),
                  const Icon(Icons.notification_add)
                ],
              ),
            ),
            Table(
              children: const [
                TableRow(
                    children: [
                      Text("S.n.",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Name",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Address",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Working Status",style: TextStyle(fontWeight: FontWeight.bold),)
                    ]
                ),
                TableRow(
                    children: [
                      Text("1"),
                      Text("Sinamangal Tube Well"),
                      Text("sinamangal"),
                      Material(
                        color: Colors.green,
                        child: InkWell(
                          focusColor: Colors.yellow,
                          child:Text("Operating",
                            selectionColor: Colors.grey,
                            style: TextStyle(
                              backgroundColor: Colors.green,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ]
                ),
                TableRow(
                    children: [
                      Text("2"),
                      Text("Sinamangal Tube Well"),
                      Text("sinamangal"),
                      Text("Operating"),
                    ]
                ),
                TableRow(
                    children: [
                      Text("3"),
                      Text("Sinamangal Tube Well"),
                      Text("sinamangal"),
                      Text("Operating"),
                    ]
                ),
                TableRow(
                    children: [
                      Text("4"),
                      Text("Sinamangal Tube Well"),
                      Text("sinamangal"),
                      Text("Operating"),
                    ]
                ),

              ],
            ),
          ]
      ),
    ),
    const Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    const Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    const Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.indigoAccent
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.task),
                label: 'Task',
                  backgroundColor: Colors.indigoAccent
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.blur_circular_rounded),
                label: 'Status',
                  backgroundColor: Colors.indigoAccent
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.check_circle_outlined),
                label: 'Profile',
                  backgroundColor: Colors.indigoAccent
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            onTap: _onItemTapped,
          ),


    );
  }

}
