import 'package:flutter/material.dart';
import 'package:surya_namaskar/Fitness.dart';
import 'package:surya_namaskar/main.dart';

class Surya_namaskar extends StatefulWidget {
  @override
  State<Surya_namaskar> createState() => _Surya_namaskarState();
}

class _Surya_namaskarState extends State<Surya_namaskar> {
  PageController? controller;
  int curind = 0;
  int _navBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Surya Namaskar Steps",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20),
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          height: 550,
          width: double.infinity,
          child: PageView.builder(
            controller: controller,
            onPageChanged: (next) {
              curind = next;
              setState(() {});
            },
            itemCount: Fitness_data.surya_namaskar_name.length,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [
                    Container(
                        height: 100,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(3),
                        child: Text(
                          "${Fitness_data.surya_namaskar_name[index]}",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        )),
                    Container(
                      height: 350,
                      width: 400,
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/${Fitness_data.surya_namaskar[index]}"),
                              fit: BoxFit.fill)),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _navBarIndex,
        items: [
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Fitness();
                    },
                  ));
                },
                child: Icon(
                  Icons.home,
                  color: Colors.black,
                  size: 25,
                )),
            backgroundColor: Colors.purple,
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_gymnastics,
              color: Colors.black,
              size: 25,
            ),
            backgroundColor: Colors.purple,
            label: 'Gyms',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
              size: 25,
            ),
            backgroundColor: Colors.purple,
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.directions_run_rounded,
              color: Colors.black,
              size: 25,
            ),
            backgroundColor: Colors.purple,
            label: 'Run',
          ),
        ],
      ),
    );
  }
}
