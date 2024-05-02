import 'package:flutter/material.dart';
import 'package:surya_namaskar/Gym.dart';
import 'package:surya_namaskar/Surya_namaskar.dart';
import 'package:surya_namaskar/Yoga.dart';

void main() {
  runApp(MaterialApp(
    home: Fitness(),
    debugShowCheckedModeBanner: false,
  ));
}

class Fitness extends StatefulWidget {
  const Fitness({Key? key}) : super(key: key);

  @override
  State<Fitness> createState() => _FitnessState();
}

class _FitnessState extends State<Fitness> {
  int _navBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            backgroundColor: Colors.grey,
            elevation: 0,
            centerTitle: true,
            title: Text(
              "Fitness",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple.shade900),
            ),
          ),
          preferredSize: Size(0, 50)),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _navBarIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
              size: 35,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_gymnastics,
              color: Colors.black,
              size: 35,
            ),
            label: 'Gyms',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
              size: 35,
            ),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.directions_run_rounded,
              color: Colors.black,
              size: 35,
            ),
            label: 'Run',
          ),
        ],
      ),
      body: Column(
        children: [
          Column(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Surya_namaskar();
                      },
                    ));
                  },
                  child: Column(
                    children: [
                      Container(
                          height: 35,
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(3),
                          child: Text(
                            "Surya Namaskar",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w900),
                          )),
                      Container(
                        height: 100,
                        width: 200,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Suryanamaskar_.jpg"),
                                fit: BoxFit.fill)),
                      ),
                    ],
                  )),
              Container(
                height: 2,
                width: double.infinity,
                margin: EdgeInsets.all(10),
                color: Colors.black,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Yoga();
                      },
                    ));
                  },
                  child: Column(
                    children: [
                      Container(
                          height: 35,
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(3),
                          child: Text(
                            "Yoga",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w900),
                          )),
                      Container(
                        height: 100,
                        width: 200,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/yoga_.jpg"),
                                fit: BoxFit.fill)),
                      ),
                    ],
                  )),
              Container(
                height: 2,
                width: double.infinity,
                margin: EdgeInsets.all(10),
                color: Colors.black,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Gym();
                      },
                    ));
                  },
                  child: Column(
                    children: [
                      Container(
                          height: 35,
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(3),
                          child: Text(
                            "Gym",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w900),
                          )),
                      Container(
                        height: 100,
                        width: 200,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/Gym_.jpg"),
                                fit: BoxFit.fill)),
                      ),
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}
