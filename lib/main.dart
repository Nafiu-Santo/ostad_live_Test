import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Live Test',
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Need Blood",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.add,color: Colors.white,)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: CircleAvatar(
                child: Icon(Icons.bloodtype_outlined,size: 90,color:Colors.red ,),
                radius: 80,
                backgroundColor: Colors.grey,
              ),
            ),
            Text('Donate Blood',style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}

