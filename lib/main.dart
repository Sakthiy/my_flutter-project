import 'package:flutter/material.dart';

void main(){
  runApp(MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Alertbox(),
  );
}
class Alertbox extends StatefulWidget {
  const Alertbox({Key? key}) : super(key: key);

  @override
  _AlertboxState createState() => _AlertboxState();
}

class _AlertboxState extends State<Alertbox> {
  void _showDialog(){
    showDialog(context: context, builder: (context){
     return AlertDialog(
       title: Text('Sakthivel?'),
       content: Text('Do Not  This\'sgsd kdslfds sgd'),
       actions: [
         MaterialButton(onPressed: (){}, child: Text('Yes'),
         ),
         MaterialButton(onPressed: (){
           Navigator.pop(context);
         }, child: Text('No'),
         ),
       ],
     );
    });
  }
  @override
  Widget build(BuildContext context) =>Scaffold(
    backgroundColor: Colors.deepPurple[200],
    body: Center(
      child: MaterialButton(
          onPressed: _showDialog,
        color: Colors.white,
        child: Text('Show DIALOG',
        style: TextStyle(
          fontSize: 30,
        ),
        ),
      ),
    ),
  );
}
