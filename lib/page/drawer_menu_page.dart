import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tours/page/home_page.dart';
import 'package:tours/page/profile_page.dart';
import 'package:tours/widget/drawer_widget.dart';

class DrawerMenuPage extends StatefulWidget {
  const DrawerMenuPage({super.key});

  @override
  State<DrawerMenuPage> createState() => _DrawerMenuPageState();
}

class _DrawerMenuPageState extends State<DrawerMenuPage> {
  late double xOffset;
  late double yOffset;
  late double scaleFactor;
  late bool isDrawerOpen;
  bool isDragging = false;

  @override
  void initState() {
    super.initState();

    xOffset = 0;
    yOffset = 0;
    scaleFactor = 1;
    isDrawerOpen = true;

    closeDrawer();
  }

  void openDrawer() => setState(() {
    xOffset = 220;
    yOffset = 150;
    scaleFactor = 0.6;
    isDrawerOpen = true;
  });

  void closeDrawer() => setState(() {
    xOffset = 0;
    yOffset = 0;
    scaleFactor = 1;
    isDrawerOpen = false;
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: [
          buildDrawer(),
          buildPage()
        ],
      ),
    );
  }

  Widget buildDrawer() => SafeArea(
    child: Column(
      children: [
        DrawerWidget(
          leading: Icons.person,
          title: 'Profile',
          onClicked: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage()));
          }
        ),
        DrawerWidget(
          leading: FontAwesomeIcons.heartCircleCheck,
          title: 'Favourites',
          onClicked: () {}
        ),
        DrawerWidget(
          leading: FontAwesomeIcons.arrowRightFromBracket,
          title: 'Logout',
          onClicked: () {}
        )
      ],
    )
  );

  Widget buildPage() {
    return PopScope(
      onPopInvoked: (isDrawerOpen) {
        closeDrawer();
      },
      // () {
      //   if(isDrawerOpen) {
      //     closeDrawer();

      //     return false;
      //   } else {
      //     return true;
      //   }
      // },
      child: GestureDetector(
        onTap: closeDrawer,
        onHorizontalDragStart: (details) => isDragging = true,
        onHorizontalDragUpdate: (details) {
          if(!isDragging) return;
      
          const delta = 1;
          if(details.delta.dx > delta) {
            openDrawer();
          } else if(details.delta.dx < -delta) {
            closeDrawer();
          }
          
          isDragging = false;
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          transform: Matrix4.translationValues(xOffset, yOffset, 0)
            ..scale(scaleFactor),
          child: AbsorbPointer(
            absorbing: isDrawerOpen,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(isDrawerOpen ? 20 : 0),
              child: Container(
                color: isDrawerOpen ? Colors.white12 : Theme.of(context).primaryColor,
                child: HomePage(drawer: openDrawer)
              ),
            )
          )
        ),
      ),
    );
  }
}