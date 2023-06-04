import 'package:flutter/material.dart';

void main() => runApp(InstagramHomePage());

class InstagramHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.camera_alt,
            color: Colors.black,
          ),
          title: Text(
            'Instagram',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Billabong',
              fontSize: 30.0,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.send,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            // Stories Section
            Container(
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 10.0),
                  CircleAvatar(
                    radius: 35.0,
                    backgroundImage: AssetImage('images/c.jpg'),
                  ),
                  SizedBox(width: 15.0),
                  CircleAvatar(
                    radius: 35.0,
                    backgroundImage: AssetImage('images/f.jpg'),
                  ),
                  SizedBox(width: 15.0),
                  CircleAvatar(
                    radius: 35.0,
                    backgroundImage: AssetImage('images/d.jpg'),
                  ),
                  SizedBox(width: 15.0),
                  CircleAvatar(
                    radius: 35.0,
                    backgroundImage: AssetImage('images/s.jpg'),
                  ),
                  SizedBox(width: 15.0),
                  CircleAvatar(
                    radius: 35.0,
                    backgroundImage: AssetImage('images/z.jpg'),
                  ),
                  SizedBox(width: 15.0),
                ],
              ),
            ),

            // Posts Section
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Replace with your actual data count
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20.0,
                              backgroundImage: AssetImage('images/c.jpg'),
                            ),
                            SizedBox(width: 10.0),
                            Text(
                              'Assem',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.more_vert),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Image.asset('images/pone.jpg'), // Replace with your actual image
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                            Icon(Icons.add),
                            SizedBox(width: 10.0),
                            Icon(Icons.chat_bubble_outline),
                            SizedBox(width: 10.0),
                            Icon(Icons.send),
                            Spacer(),
                            Icon(Icons.bookmark_border),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Liked by John and 1,234 others',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'View all 100 comments',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          '2 hours ago',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),label: "Home"

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),label: "Search"

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box),label: "Add"

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),label: "Likes"

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),label: "Profile"

            ),
          ],
        ),
      ),
    );
  }
}
