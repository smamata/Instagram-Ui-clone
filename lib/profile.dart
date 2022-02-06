import 'package:flutter/material.dart';

void main() {
  runApp(Insta());
}

class Insta extends StatefulWidget {
  const Insta({Key? key}) : super(key: key);

  @override
  _InstaState createState() => _InstaState();
}

// for gridview
Container post({
  required String text,
  required Color color,
}) {
  return Container(
      padding: const EdgeInsets.all(2),
      child: Center(child: Text(text)),
      color: color);
}

// for highlights
Column newpost({required String text, required String abc}) {
  return Column(
    children: [
      CircleAvatar(
        backgroundColor: Colors.lightBlue,
        radius: 30,
        child: Text(text),
      ),
      SizedBox(
        height: 20,
        width: 80,
      ),
      Text(
        abc,
        style: TextStyle(fontWeight: FontWeight.bold),
      )
    ],
  );
}

class _InstaState extends State<Insta> {
  int currentState = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          "edacious100",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            Center(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 50,
                    child: Text("DP"),
                  ),
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "45",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 10),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Posts",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 11),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "128",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 10),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Follower",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 11),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "843",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 10),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Following",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 11),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 1.0),
                  child: Text(
                    "Edacious",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 1.0),
                    child: Text(
                      "Do Follow... abc abc abc abc Did You? Aww Thank You!! abc abc",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 1.0, 0.0, 1.0),
                  child: Text(
                    "|| Dark And B...",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
                OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "Ad Tools",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    )),
                OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "Insights",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    )),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  newpost(text: "NP", abc: "New Post"),
                  SizedBox(
                    width: 15,
                  ),
                  newpost(text: "NP", abc: "New Post"),
                  SizedBox(
                    width: 15,
                  ),
                  newpost(text: "NP", abc: "New Post"),
                  SizedBox(
                    width: 15,
                  ),
                  newpost(text: "NP", abc: "New Post"),
                  SizedBox(
                    width: 15,
                  ),
                  newpost(text: "NP", abc: "New Post"),
                  SizedBox(
                    width: 15,
                  ),
                  newpost(text: "NP", abc: "New Post"),
                  SizedBox(
                    width: 15,
                  ),
                  newpost(text: "+", abc: "New"),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            DefaultTabController(
              length: 3,
              child: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.grid_on_sharp,
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.play_arrow_outlined,
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.person_pin_outlined,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            GridView.count(
              primary: false,
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[
                post(color: Colors.lightBlue, text: "Hey"),
                post(color: Colors.blueAccent, text: "!!!"),
                post(color: Colors.lightBlue, text: "Hello world"),
                post(color: Colors.blueAccent, text: "Watz"),
                post(color: Colors.lightBlue, text: "Up"),
                post(color: Colors.blueAccent, text: "!!!"),
                post(color: Colors.blueAccent, text: "Love"),
                post(color: Colors.lightBlue, text: "Affection"),
                post(color: Colors.blueAccent, text: "Attraction"),
                post(color: Colors.lightBlue, text: "Observation"),
              ],
            ),
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentState,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: ''),
        ],
        onTap: (index) {
          setState(() {
            currentState = index;
          });
        },
        selectedItemColor: Colors.black,
      ),
    );
  }
}
