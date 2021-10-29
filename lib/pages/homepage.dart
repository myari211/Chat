import "package:flutter/material.dart";
import "package:chatty/theme.dart";
import "package:chatty/widgets/chat_tile.dart";

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 40,
                    right: 40,
                    top: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.more_vert,
                        color: whiteColor,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/memel1.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Imelda Permatasari',
                  style: TextStyle(
                    fontSize: 20,
                    color: whiteColor,
                  ),
                ),
                Text(
                  "Pilates Trainer",
                  style: TextStyle(
                    fontSize: 16,
                    color: lightBlueColor,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: titleText,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/ari.jpeg',
                        name: "Ari Pratama",
                        text: 'Halo, boleh kenalan ?',
                        time: 'Now',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/cath1.jpeg',
                        name: 'Cathrine Annastachia',
                        text: 'Hello, Can i help you ?',
                        time: 'Now',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/valen.jpg',
                        name: 'Valenciane Violetta',
                        text: 'Hallo Kak Imel, Apa Kabar ?',
                        time: '2.15 PM',
                        unread: false,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Groups',
                        style: titleText,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/memel1.jpeg',
                        name: 'JAKARTA TERKINI',
                        text: 'Bagusnya sih di tempat ...',
                        time: '01:30 AM',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/memel1.jpeg',
                        name: 'JAKARTA TERKINI',
                        text: 'Bagusnya sih di tempat ...',
                        time: '01:30 AM',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/memel1.jpeg',
                        name: 'JAKARTA TERKINI',
                        text: 'Bagusnya sih di tempat ...',
                        time: '01:30 AM',
                        unread: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
