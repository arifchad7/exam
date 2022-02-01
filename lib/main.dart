import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _mobCon=TextEditingController();
  TextEditingController _passCon=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('Pattern & Add button', style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
          //Image(image: AssetImage('nigar/1.jpeg'),
          Image(image: NetworkImage('https://cdn.pixabay.com/photo/2018/04/04/13/38/nature-3289812_960_720.jpg'),
            height: 90,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
              Slider(
                onChanged: (value){},
                value: 10,
                min: 1,
                max: 100,
                thumbColor: Colors.amber,
                activeColor: Colors.blue,
                inactiveColor: Colors.red,
              ),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    controller: _mobCon,
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(

                      labelText: 'Mobile Number',
                      hintText: 'Type Your 11 digit mobile Number here',
                      border: OutlineInputBorder(),
                      icon: Icon (Icons.call),
                      fillColor: Colors.white,

                  ),
                  ),



              ),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    controller: _passCon,
                    obscureText: true,
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Type Your Password here',
                      border: OutlineInputBorder(),
                      icon: Icon (Icons.lock),
                      fillColor: Colors.white,
                    ),
                  ),
              ),
              Row(
                children: [
                  Text('Remeber'),
                  Switch(
                    onChanged:(IsEnable){},
                    value: true,
                    activeColor: Colors.red,
                  ),
                  RaisedButton(
                    onPressed: (){
                      var mob= _mobCon.text;
                      var pass= _passCon.text;


                      print("mob:  $mob $pass");
                     // print("pass:  $pass $mob");
                    },
                    child: Text('Sign In'),
                    textColor: Colors.black,
                    elevation: 20,
                    color: Colors.pink,
                  ),
                  SizedBox(width: 20,),
                  OutlineButton(
                    onPressed: (){},
                    child: Text('Cancel'),
                    textColor: Colors.black,
                    color: Colors.pink,
                  ),
                  SizedBox(width: 20,),
                  FlatButton(
                    onPressed: (){
                      print("$_mobCon.text $_passCon.text");
                    },
                    child: Text('Reset All'),
                    textColor: Colors.white,
                    color: Colors.pink,
                  ),
                  SizedBox(width: 20,),
                ],

              )

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.home_filled),
      ),
    );
  }

}

