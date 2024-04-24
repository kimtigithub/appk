import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shout Out'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           const SizedBox(height: 20),
           const  CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/user_image.jpg'), // Replace with actual image path
            ),
          const  SizedBox(height: 10),
           const Text(
              'NomNom21',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
           const SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                // Navigate to edit profile page
                Navigator.pushNamed(context, '/edit_profile');
              },
              child: const Text('Edit'),
            ),
           const SizedBox(height: 20),
           const Text(
              'Faculty: Liberal Arts',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
           const SizedBox(height: 10),
            const Text(
              'Year: 2',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
           const  SizedBox(height: 20),
            /*Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10),
              ), 
           child:  */ 
                 const Divider(
              color: Color.fromARGB(249, 71, 68, 68), // Gray color for the line
              thickness: 1, // Adjust thickness as needed
              height: 20, // Adjust height as needed
              indent: 20, // Adjust left indentation as needed
              endIndent: 20, // Adjust right indentation as needed
            ),
            const SizedBox(height: 20),
               const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Posts',
                        style: TextStyle(
                          fontSize: 18,
                          decoration: TextDecoration.underline,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Favorites',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  // Replace with actual post and favorite count widgets
                  Text('Total Posts: 10'),
                  Text('Total Favorites: 5'),
                ],
              ),
              //);
          const  SizedBox(height: 20),
            // Replace with actual post list widget
            buildPostWidget(
              'NomNom21',
              '2 hours ago',
              'This is a sample post.',
              10, // Replace with actual love count
              5, // Replace with actual comment count
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.orange,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                // Navigate to home page
              },
              icon: const Icon(Icons.home, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                // Navigate to search page
              },
              icon: const Icon(Icons.search, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                // Navigate to create post page
              },
              icon: const Icon(Icons.add_circle, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                // Navigate to notifications page
              },
              icon:const  Icon(Icons.notifications, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                // Navigate to profile page
              },
              icon: const Icon(Icons.account_circle, color: Colors.white),
            ),
          ],
        ),
      ),
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
    return
     /*Container(
      padding:const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: */Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
            const  CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/user_image.jpg'), // Replace with actual image path
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
                icon:const Icon(Icons.favorite),
                color: Colors.red, // Change color based on user's interaction
              ),
              Text(loveCount.toString()),
              IconButton(
                onPressed: () {
                  // Handle comment icon pressed
                },
                icon: const Icon(Icons.comment),
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
    home:const ProfilePage(),
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
        child: Text('Edit Profile Page'),
      ),
    );
  }
}