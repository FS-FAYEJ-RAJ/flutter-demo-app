import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo App',
      theme: ThemeData(primaryColor: Colors.blue),
      home:Homepage() ,
    );
  }
}
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('Demo App',style: TextStyle(color: Colors.white),)),
      body:Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                 width: MediaQuery.of(context).size.width,
                  height: 70,
                  decoration: BoxDecoration(color: Colors.blue,
                  borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sun',style: TextStyle(color: Colors.white,fontSize: 40,)),
                      Text('60',style: TextStyle(color: Colors.white,fontSize: 10,fontWeight:FontWeight.bold),)
                    ],
                  ),
                ),
                SizedBox(height:10),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  decoration: BoxDecoration(color: Colors.red,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('AND',style: TextStyle(color: Colors.white,fontSize: 40,)),
                      Text('350',style: TextStyle(color: Colors.white,fontSize: 10,fontWeight:FontWeight.bold),)
                    ],
                  ),
                ),
                SizedBox(height:10,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  decoration: BoxDecoration(color: Colors.grey,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('SATURATED.',style: TextStyle(color: Colors.white,fontSize: 40,)),
                      Text('180',style: TextStyle(color: Colors.white,fontSize: 10,fontWeight:FontWeight.bold),)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




