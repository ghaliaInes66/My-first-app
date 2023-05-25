import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'profile app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 10, 63, 107)),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MyHomePage(title: 'ines'),
      
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        leading: Icon(
          Icons.account_circle,
          color: Colors.white,
          size: 50,
        ),
        title: Text(
          title,
          style: TextStyle(
            color:Color.fromARGB(255, 255, 255, 255),
            fontSize: 30,
          ),),
      ),
      body:SizedBox(
        width: double.infinity,
      child:Container(
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/sky.jpg"),
            fit: BoxFit.cover,
            
          ),
        ),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           ClipOval(
            child: SizedBox.fromSize(
            size: Size.fromRadius(120), // Image radius
            child:Image(
              image: AssetImage('images/profileimage.jpg'),
              fit: BoxFit.cover,
            ), 
         ),
        ),
        SizedBox(
          height: 48,
        ),
   
            const Text(
               '"everything i need is on the ground"',
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Color.fromARGB(255, 1, 28, 51),
                fontSize: 20,
                
                ),
              ),
           
          ],
        ),
      ),
      
    )
    );
  }
}


