import 'package:flutter/material.dart';
import 'package:surya_namaskar/Fitness.dart';
import 'package:surya_namaskar/main.dart';

class Yoga extends StatefulWidget {
  const Yoga({Key? key}) : super(key: key);

  @override
  State<Yoga> createState() => _YogaState();
}

class _YogaState extends State<Yoga> {
  int _navBarIndex = 0;
  PageController? controller;
  int curind = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Steps Follow Yoga",
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
            itemCount: Fitness_data.yoga_image.length,
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
                          "${Fitness_data.yoga_Steps_name[index]}",
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
                                  "assets/images/${Fitness_data.yoga_image[index]}"),
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
