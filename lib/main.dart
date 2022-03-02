import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {


  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {


  var toggleStates = [true,false,true];
  int selectedToggleIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
                ToggleButtons(children:
                    [
                      Icon(Icons.looks_one),
                      Icon(Icons.looks_two),
                      Icon(Icons.looks_3),
                    ],
                    isSelected: toggleStates,
                  color: Colors.purpleAccent,
                  selectedColor: Colors.lightGreen,
                  fillColor: Colors.deepPurpleAccent,
                  
                  onPressed:
                  (int selected_index)
                  {
                    selectedToggleIndex=selected_index;
                    print('Selected index: $selected_index');

                    setState(() {
                      toggleStates [selectedToggleIndex] = ! toggleStates [selectedToggleIndex];
                    });

              },

                ),
          ],
        ),
      ),

    );
  }
}
