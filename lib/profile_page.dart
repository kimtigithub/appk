import 'package:flutter/material.dart';
//import 'package:shout_out/edit_profile_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            const Text(
              'Shout Out',
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8), // Adjust the height as needed
            Divider(
              color: Colors.grey.withOpacity(0.1), // Blurred grey color
              thickness: 2,
              height: 20,
              indent: 0,
              endIndent: 0,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                  'images/user_image.png'), // Replace with actual image path
            ),
            const SizedBox(height: 10),
            const Text(
              'NomNom21',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
             TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/edit_profile');
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero, // Remove padding around the text
                tapTargetSize: MaterialTapTargetSize
                    .shrinkWrap, // Make button size fit its child
              ),
              child: const Text(
                'Edit',
                style: TextStyle(
                  color: Colors.blue, // Set the text color here
                ),
              ),
            ),
            const SizedBox(height: 20),

            const Row(
              mainAxisAlignment: MainAxisAlignment
                  .start, // Align children to the start (left) of the row
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 0.0), // Add left padding to separate from the edge
                  child: Text(
                    'Faculty: Liberal Arts',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment
                  .start, // Align children to the start (left) of the row
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 0.0), // Add left padding to separate from the edge
                  child: Text(
                    'Year: 2',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            Divider(
              color: Colors.grey.withOpacity(0.1),
              thickness: 2,
              height: 20,
              indent: 0,
              endIndent: 0,
            ),

            const SizedBox(height: 20),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Posts',
                        style: TextStyle(
                          fontSize: 18,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.orange,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Favorites',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                // Replace with actual post and favorite count widgets
              ],
            ),
            //);
            const SizedBox(height: 20),
            // Replace with actual post list widget
            buildPostWidget(
              'NomNom21',
              '17 hours ago',
              'OPEN DISCUSSION: What is your (honest) opinion about the recent football match between KMUTT and KMITL',
              20, // Replace with actual love count
              5, // Replace with actual comment count
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.blue,
        ),
      ),
      bottomNavigationBar: NavigationBarTheme(
          data: const NavigationBarThemeData(
            labelTextStyle: MaterialStatePropertyAll(
              TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 12,
                  color: Colors.white),
            ),
            indicatorColor: Colors.transparent,
          ),
          child: NavigationBar(
            height: 70,
            backgroundColor: Colors.orange,
            destinations: const [
              NavigationDestination(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                ),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(
                  Icons.search_outlined,
                  color: Colors.white,
                ),
                label: 'Search',
              ),
              NavigationDestination(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                label: 'Notification',
              ),
              NavigationDestination(
                icon: Icon(
                  Icons.person_outline_outlined,
                  color: Colors.white,
                ),
                label: 'Profile',
              ),
            ],
          )),
    );
  }
}

Widget buildPostWidget(
  String userName,
  String timeAgo,
  String postContent,
  int loveCount,
  int commentCount,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(
                'images/user_image.png'), // Replace with actual image path
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                timeAgo,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Spacer(), // Add spacer to push the three-dot icon to the right
          IconButton(
            onPressed: () {
              // Handle the action when the three-dot icon is pressed
            },
            icon: const Icon(Icons.more_horiz),
          ),
        ],
      ),
      const SizedBox(height: 10),
      Text(postContent),
      const SizedBox(height: 10),
      Row(
        children: [
          IconButton(
            onPressed: () {
              // Handle love icon pressed
            },
            icon: const Icon(Icons.favorite),
            color: Colors.red, // Change color based on user's interaction
          ),
          Text(loveCount.toString()),
          IconButton(
            onPressed: () {
              // Handle comment icon pressed
            },
            icon: const Icon(Icons.comment_outlined),
          ),
          Text(commentCount.toString()),
        ],
      ),
    ],
    //),
  );
}

void main() {
  runApp(MaterialApp(
    home: const ProfilePage(),
    // Define routes for navigation
    routes: {
      '/edit_profile': (context) => const EditProfilePage(),
    },
  ));
}

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: const Center(
        child: Text('Edit Profile Page2'),
      ),
    );
  }
}
