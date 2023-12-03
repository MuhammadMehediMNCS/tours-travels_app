import 'package:flutter/material.dart';
import 'package:tours/page/drawer_menu_page.dart';
import 'package:tours/widget/appbar_widget.dart';
import 'package:tours/widget/text_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: customeAppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const DrawerMenuPage()), (route) => false);
          }
        )
      ),
      body: Column(
        children: [
          ClipOval(
            child: Image.network(
              'https://wallpapercave.com/wp/ED6KDMs.jpg',
              height: 128,
              width: 128,
            )
          ),
          const SizedBox(height: 10),
          const TextWidget(
            text: 'Charly Alina',
            fontSize: 18,
            color: Colors.white,
          ),
          const TextWidget(
            text: '01777000000',
            fontSize: 10,
            color: Colors.white54,
          ),
          const SizedBox(height: 14),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.white,
              shape: const StadiumBorder(),
              minimumSize: const Size(80, 48),
              textStyle: TextStyle(color: Colors.black)
            ),
            child: const Text('Update PRO'),
            onPressed: () {}
          )
        ],
      ),
    );
  }
}