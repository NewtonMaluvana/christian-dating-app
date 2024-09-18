import 'package:dating_app/data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  Widget getTile(String title, String text2, IconData icon) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(text2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: h,
                  child: Stack(
                    children: [
                      Image.asset(
                        height: double.infinity,
                        fit: BoxFit.cover,
                        "images/base.jpeg",
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    const Color.fromARGB(100, 0, 0, 0),
                                    Colors.black.withOpacity(0.5)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomCenter,
                                  stops: const [0.2, 1])),
                          padding: const EdgeInsets.all(10),
                          width: w,
                          height: 120,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Column(children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            width: w,
                            child: Text("Basetsane ,28",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: w * .08,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            width: w,
                            child: Text(
                                "Loyal,loving,caring n kinda shy guy with great sense of humor ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: w * .04,
                                    fontWeight: FontWeight.w500)),
                          )
                        ]),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: w,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: w,
                        child: Text(
                          textAlign: TextAlign.start,
                          "About me:",
                          style:
                              TextStyle(color: Colors.red, fontSize: w * .05),
                        ),
                      ),
                      Container(
                        child: const Text(
                            "Loyal,loving,caring n kinda shy guy with great sense of humor Looking for woman who is highly intellectual,wise ,goal orientated,born again Christian -I'm not sexual active-Computer "),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: w,
                        child: Text(
                          textAlign: TextAlign.start,
                          "Basic Information:",
                          style:
                              TextStyle(color: Colors.red, fontSize: w * .05),
                        ),
                      ),
                      Container(
                          child: Column(
                        children: [
                          getTile("Relationship Status", "Single",
                              FontAwesomeIcons.heart),
                          getTile(
                              "Looking for:", "Marriage Partner", Icons.search),
                          getTile("Drinking Status", "Dont Drink",
                              FontAwesomeIcons.wineBottle),
                          getTile("Smoking Status", "Dont Smoke",
                              FontAwesomeIcons.smoking),
                          getTile("Virginity Status", "Not Virgin",
                              FontAwesomeIcons.question),
                          getTile("Church Attendance", "Every Week",
                              FontAwesomeIcons.church),
                          getTile("Relation With The Lord", "Im working on it",
                              FontAwesomeIcons.personPraying),
                          getTile(
                              "Have Children?", "No", FontAwesomeIcons.child),
                          getTile("Education Level", "University/College",
                              FontAwesomeIcons.school),
                          getTile("Ethnicity", "Black African",
                              FontAwesomeIcons.person),
                        ],
                      ))
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text("My Interests:",
                          style:
                              TextStyle(color: Colors.red, fontSize: w * .05)),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        width: w,
                        child: Wrap(
                            children: List.generate(interests.length, (index) {
                          return Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: Chip(
                              backgroundColor:
                                  const Color.fromARGB(255, 212, 118, 149),
                              shape: RoundedRectangleBorder(
                                  side:
                                      const BorderSide(style: BorderStyle.none),
                                  borderRadius: BorderRadius.circular(15)),
                              label: Text(
                                interests[index],
                                style: TextStyle(color: Colors.pink[600]),
                              ),
                            ),
                          );
                        })),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text("My values:",
                          style:
                              TextStyle(color: Colors.red, fontSize: w * .05)),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        width: w,
                        child: Wrap(
                            children: List.generate(values.length, (index) {
                          return Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: Chip(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              label: Text(values[index]),
                            ),
                          );
                        })),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
