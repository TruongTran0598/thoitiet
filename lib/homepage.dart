import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Weather",
      home: Material(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.pink[100].withOpacity(0.5),
            elevation: 0,
            leading: IconButton(
              icon: Image.asset(
              "assets/images/icon_menu.png",
              height: 25,
              ),
              onPressed: () {

              },
            ),
            title: Center(
              child: Text(
                "Hà Nội",
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                    fontWeight: FontWeight.w400
                ),
              ),
            ),
            actions: [
              IconButton(
                icon: Image.asset(
                  "assets/images/settings.png",
                  height: 30,
                ),
                onPressed: () {

                }
              )
            ],
          ),
          body:Center(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/duong.jpg"),
                    fit: BoxFit.cover,
                  )
              ),
              child: Column(
                children: <Widget> [
                  Flexible(
                    flex: 4,
                    child:Padding(
                      padding: EdgeInsets.symmetric(vertical: 100),
                      child: Container(
                        child: Column(
                          children: <Widget> [
                            Text(
                              "32",
                              style: TextStyle(
                                fontSize: 140,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            Text(
                              "- Have sun -",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w300
                              ),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget> [
                                Image.asset(
                                  "assets/images/down_temperature.png",
                                  width: 14,
                                ),
                                Text(
                                  "28",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Image.asset(
                                  "assets/images/up_temperature.png",
                                  width: 14,
                                ),
                                Text(
                                  "38",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  "Feels: 35",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  Flexible(
                    flex: 2,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget> [
                          Text(
                            "Latest update 5 min ago",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget> [
                              Container(
                                  width: 140,
                                  height: 100,
                                  color: Colors.white.withOpacity(0.3),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget> [
                                      Image.asset(
                                        "assets/images/wind.png",
                                        height: 25,
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        "SE 0.8 M/S",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        "Wind",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  )
                              ),
                              Container(
                                  width: 140,
                                  height: 100,
                                  color: Colors.white.withOpacity(0.3),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget> [
                                      Image.asset(
                                        "assets/images/humidity.png",
                                        height: 25,
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        "64%",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        "Humidity",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  )
                              ),
                              Container(
                                  width: 140,
                                  height: 100,
                                  color: Colors.white.withOpacity(0.3),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget> [
                                      Image.asset(
                                        "assets/images/eye-open.png",
                                        height: 25,
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        "6 KM",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        "Visibility",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  )
                              ),
                            ],
                          ),
                          SizedBox(height: 2,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget> [
                              Container(
                                  width: 140,
                                  height: 100,
                                  color: Colors.white.withOpacity(0.3),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget> [
                                      Image.asset(
                                        "assets/images/gauge.png",
                                        height: 25,
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        "1010.0 MPH",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        "Pressure",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  )
                              ),
                              Container(
                                  width: 140,
                                  height: 100,
                                  color: Colors.white.withOpacity(0.3),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget> [
                                      Image.asset(
                                        "assets/images/shield.png",
                                        height: 25,
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        "6",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        "UV index",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  )
                              ),
                              Container(
                                  width: 140,
                                  height: 100,
                                  color: Colors.white.withOpacity(0.3),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget> [
                                      Image.asset(
                                        "assets/images/sun.png",
                                        height: 25,
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        "06:30/17:30",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        "Sunrise/Sunset",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        )
      )
    );
  }
}