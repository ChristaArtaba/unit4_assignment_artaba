import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 223, 223, 223),
        appBar: AppBar( 
          title: Text('CHRISTA ISABELLE ARTABA'),
          backgroundColor: const Color.fromARGB(255, 255, 142, 67),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color.fromARGB(255, 255, 142, 67),
                    width: 3.0,
                  ),
                  image: DecorationImage(
                    image: AssetImage('pic1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 20),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Christa Isabelle Artaba',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'BSIT 3B',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),

              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildProfileDetail(Icons.cake, 'Birthdate', 'December 23, 2002'),
                    _buildProfileDetail(Icons.location_on, 'Address', 'Mandurriao, Iloilo, Philippines'),
                    _buildProfileDetail(Icons.email, 'Email', 'christaisabelle.artaba@wvsu.edu.ph'),
                    _buildProfileDetail(Icons.phone, 'Phone Number', '09123456789'),
                    _buildProfileDetail(Icons.school, 'Education', 'West Visayas State University'),
                    _buildProfileDetail(Icons.book, 'Course', 'Bachelor of Science in Information Technology'),
                    _buildProfileDetail(Icons.favorite, 'Hobbies', 'Baking, Cooking, Sleeping, Surfing the Net, Listening to music'),
                  ],
                ),
              ),
              SizedBox(height: 30),

              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About Me',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'I am Christa Isabelle, a 3rd year BSIT student at West Visayas State University, gradually exploring the digital world one byte at a time. '
                      ' As someone who prefers staying at home, I feel peace and comfort in the familiar surroundings of my own space. '
                      " When I'm not tangled up in coding and assignments, you'll probably see me cooking and baking in the kitchen or engrossed in the captivating realms of dramas and anime."
                      ' I have a soft spot for a great tune and a relaxing evening at home, accompanied by some online browsing to past time.'
                      " Through my experiences, I've realized that it is important to maintain a balance between academics and personal life."
                      " It's fine to focus on self-care and find joy in life's simple pleasures."
                      ' At times, the most exciting experiences are found within our everyday surroundings, and joy can just be a peaceful evening indoors. ',
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileDetail(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        children: [
          Icon(icon, size: 20),
          SizedBox(width: 20),
          Text(
            '$label: ',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}
