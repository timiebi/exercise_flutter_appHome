import "package:first_flutter/utils/emoticon_face.dart";
import "package:first_flutter/utils/exercise_list.dart";
import "package:flutter/material.dart";
// import "package:flutter/widgets.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  // greetings row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi Nicholas",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "23 jan 2021",
                            style: TextStyle(
                                color: Color.fromARGB(255, 172, 204, 230)),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        padding: const EdgeInsets.all(12),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  // SEARCH BBAR
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 89, 161, 223),
                        borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.all(12),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 27,
                  ),

                  // HOW DO YOU FEEL
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hi Nicholas",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // different faces and mood
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            EmoticonFace(emoticonFace: "😮‍💨"),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Bad",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            EmoticonFace(emoticonFace: "🙂"),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Fine",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            EmoticonFace(emoticonFace: "😅"),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Well",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            EmoticonFace(emoticonFace: "🤓"),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Excellent",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ]),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            // bottom bar buttons
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 244, 243, 243),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), // Curve top-left corner
                  topRight: Radius.circular(30), // Curve top-right corner
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    // header
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Exercises",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Icon(Icons.more_horiz),
                        ]),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: ListView(
                        children: const [
                          ExerciseList(
                            color: Colors.orange,
                            icon: Icons
                                .favorite_outline_outlined, // Correctly passing IconData
                            exerciseName: "Speaking Skills",
                            numberOfExercises: 20,
                          ),
                          ExerciseList(
                            color: Colors.green,
                            icon: Icons.person, // Correctly passing IconData
                            exerciseName: "Reading Skills",
                            numberOfExercises: 5,
                          ),
                          ExerciseList(
                            color: Colors.pink,
                            icon: Icons.star, // Correctly passing IconData
                            exerciseName: "Writing Skills",
                            numberOfExercises: 8,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
