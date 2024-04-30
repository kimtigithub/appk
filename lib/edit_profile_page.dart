import 'package:flutter/material.dart';
import 'package:shout_out/profile_page.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  String _name = 'NomNom21';
  String _faculty = 'Liberal Arts';
  String _year = '2';

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
            SizedBox(
              child: GestureDetector(
                onTap: () {
                  // Handle camera icon click
                },
                child: const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.camera_alt,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            /*const  Divider(
              color: Color.fromARGB(249, 71, 68, 68),
              thickness: 1,
              height: 20,
              indent: 20,
              endIndent: 20,
            ),*/
            Center(
              child: SizedBox(
                width: 200, // Adjust the width as needed
                child: buildProfileField('', _name, (value) {
                  setState(() {
                    _name = value;
                  });
                }),
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text('Faculty : '),
                ),
                buildProfileField('', _faculty, (value) {
                  setState(() {
                    _faculty = value;
                  });
                }),
              ],
            ),
            buildProfileField('Year', _year, (value) {
              setState(() {
                _year = value;
              });
            }),
            const SizedBox(height: 20),
            buildPostWidget(
              'NomNom21',
              '2 hours ago',
              'This is a sample post.',
              10,
              5,
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
              icon: const Icon(Icons.notifications, color: Colors.white),
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

  Widget buildProfileField(
      String label, String value, ValueChanged<String> onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  //decoration:const InputDecoration(
                  //hintText: 'Enter $label',
                  // ),
                  textAlign: TextAlign.center,
                  controller: TextEditingController(text: value),
                  onChanged: onChanged,
                ),
              ),
            ],
          ),
        ),
        /*const Divider(
        color: Colors.black,
        thickness: 1,
        indent: 20,
        endIndent: 20,
      ),*/
      ],
    );
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
              backgroundImage: AssetImage('assets/user_image.jpg'),
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
              icon: const Icon(Icons.favorite),
              color: Colors.red,
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
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: const ProfilePage(),
    routes: {
      '/edit_profile': (context) => const EditProfilePage(),
    },
  ));
}

