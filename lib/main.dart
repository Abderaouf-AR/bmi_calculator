import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final inactiveColor = Colors.blueGrey.shade900;
final activColor = Colors.blueGrey.shade700;
var theColor1 = inactiveColor;
var theColor2 = inactiveColor;
var myStyle = GoogleFonts.share(fontSize: 20.0);
double height = 1.50;
double weight = 60.0;
int age = 20;
double result = 0.0;
int gender=0;


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void updateColor(int gender) {
    if (gender == 1) {
      if (theColor1 == inactiveColor) {
        theColor1 = activColor;
        theColor2 = inactiveColor;
      }
    } else {
      if (theColor2 == inactiveColor) {
        theColor1 = inactiveColor;
        theColor2 = activColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "BMI Camculator",
          style: GoogleFonts.share(fontSize: 25.0),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              flex: 2,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          gender=1;
                          updateColor(1);
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: theColor1,
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: Colors.white),
                        ),
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.accessibility,
                              size: 130.0,
                            ),
                            Text(
                              "Male",
                              style: myStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          gender=2;
                          updateColor(2);
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: theColor2,
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: Colors.white),
                        ),
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.pregnant_woman,
                              size: 130.0,
                            ),
                            Text(
                              "Female",
                              style: myStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade900,
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.white),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "** Height **",
                      style: myStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          "${height.toStringAsFixed(2)}",
                          style: GoogleFonts.share(fontSize: 70.0),
                        ),
                        Text(
                          "m",
                          style: myStyle,
                        ),
                      ],
                    ),
                    Slider(
                        value: height,
                        min: 1.20,
                        max: 2.30,
                        activeColor: Colors.red,
                        inactiveColor: Colors.white,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue;
                          });
                        })
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade900,
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: Colors.white),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Weight",
                              style: myStyle,
                            ),
                            Text(
                              "${weight.toStringAsFixed(1)}",
                              style: GoogleFonts.share(fontSize: 70.0),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                GestureDetector(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(90.0),
                                    ),
                                    width: 50.0,
                                    height: 50.0,
                                    child: Icon(Icons.arrow_drop_down),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      weight -= 0.5;
                                    });
                                  },
                                ),
                                GestureDetector(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(90.0),
                                    ),
                                    width: 50.0,
                                    height: 50.0,
                                    child: Icon(Icons.arrow_drop_up),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      weight += 0.5;
                                    });
                                  },
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade900,
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: Colors.white),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Age",
                              style: myStyle,
                            ),
                            Text(
                              "$age",
                              style: GoogleFonts.share(fontSize: 70.0),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                GestureDetector(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(90.0),
                                    ),
                                    width: 50.0,
                                    height: 50.0,
                                    child: Icon(Icons.arrow_drop_down),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      age -= 1;
                                    });
                                  },
                                ),
                                GestureDetector(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(90.0),
                                    ),
                                    width: 50.0,
                                    height: 50.0,
                                    child: Icon(Icons.arrow_drop_up),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      age += 1;
                                    });
                                  },
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  result = (weight/(height*height));
                  if(gender != 1 && gender!=2) {
                    Scaffold.of(context).showSnackBar(SnackBar(content: Text("Select your gender")));
                  }else{
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ResultPage()));
                  }
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.white),
                  ),
                  child: Center(child: Text(
                    "Calculate", style: GoogleFonts.share(fontSize: 50.0),)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResultPage extends StatelessWidget {

  String textResult(double res) {
    if (res < 18.5) {
      return "Under Normal!!!";
    } else if (res < 25.0) {
      return "Normal";
    } else {
      return "Override!!!";
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text("The Result"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: Text("BMI Calculator", style: GoogleFonts.share(
                  fontSize: 50.0, fontWeight: FontWeight.bold),),
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade900,
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(color: Colors.white),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10.0,),
                  Text(
                      textResult(result),
                  style: GoogleFonts.share(fontSize: 40.0, color: (textResult(result) == "Normal") ? Colors.green : Colors.red,)),
                  Center(child: Text("${result.toStringAsFixed(2)}", style: GoogleFonts.share(fontSize: 100.0),)),
                  SizedBox(height: 20.0,),
                  Text(
                      "Normal BMI range:",
                      style: GoogleFonts.share(fontSize: 20.0, color: Colors.grey,)),
                  Text(
                      "Between 18.5 and 25.0 (kg/m^2)",
                      style: GoogleFonts.share(fontSize: 20.0, color: Colors.white,)),
                  SizedBox(height: 80.0,),
                  Center(
                    child: Text(
                        (result<18.5) ? "You are in danger, you must eat more to save your body" : (result<25.0) ? "Good job! Keep on it" : "Oh no! you must practise sport and don't eat a lot",
                        style: GoogleFonts.share(fontSize: 20.0, color: Colors.white,)),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.white),
                ),
                child: Center(child: Text(
                  "Re-Calculate", style: GoogleFonts.share(fontSize: 50.0),)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

