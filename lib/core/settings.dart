import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  title: Text(
                    'James Peters',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text('View profile'),
                  trailing: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/images/greek.png'),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.graphic_eq,
                color: Colors.black,
              ),
              title: Text(
                'Streaming Services',
              ),
            ),
            Divider(),
            const ListTile(
              leading: Icon(
                Icons.mic,
                color: Colors.black,
              ),
              title: Text(
                'Voice Command',
              ),
            ),
            Divider(),
            const ListTile(
              leading: Icon(
                Icons.description,
                color: Colors.black,
              ),
              title: Text(
                'Privacy Policies',
              ),
            ),
            Divider(),
            const ListTile(
              leading: Icon(
                Icons.info,
                color: Colors.black,
              ),
              title: Text(
                'Terms and Conditions',
              ),
            ),
            Divider(),
            const ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.black,
              ),
              title: Text(
                'Contact Suppport',
              ),
            ),
            Divider(),
            const ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.pink,
              ),
              title: Text(
                'Logout',
                style: TextStyle(
                  color: Colors.pink,
                ),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
