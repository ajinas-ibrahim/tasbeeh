import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'TASBEEH'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int total=0;
  double _size;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
      total++;
    });
  }
  void _zerostate(){
    setState(() {
      _counter=0;
     
    });
    
  }
  void _refreshtotal(){
    setState(() {
      total=0;
      _counter=0;
      
    });
  }
  

  @override
  Widget build(BuildContext context) {
     if(_counter==0)
    {
      _size=40;
    }
    else
    {
      _size=60;
    }
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body:Container(

        
        
        child: Container(
          
         
        
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            
            // Text(
            //   'You have pushed the button this many times:',
            //   style: TextStyle(color: Colors.red,fontSize: 20),
              
            // ),
            Text(
              '$_counter'+'  Times',
              style:TextStyle(fontSize: _size,color:Colors.greenAccent),
            ),
            Text('Total click :'+' $total',style: TextStyle(color: Colors.amberAccent,fontSize: 25),),
            FloatingActionButton(
        onPressed:(){ _incrementCounter();},
       tooltip: 'increment',
        child: Icon(Icons.add,size: 50.0,),
      ), 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              
              children: <Widget>[
         
      FloatingActionButton(
        onPressed:(){ _zerostate();},
        tooltip: 'Refresh',
        
        child: Icon(Icons.refresh,),
      ),
      FloatingActionButton(
        onPressed:(){ _refreshtotal();},
        tooltip: 'Refresh total',
        child: Icon(Icons.refresh),
      ),
      
              ],
            )
         
        
          
          
        
     
          
            ],
        ),   
        ),
      ),
    );
  }
}
