import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tours/widget/text_widget.dart';

class HomePage extends StatefulWidget {
  final VoidCallback drawer;

  const HomePage({super.key, required this.drawer});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map <String, dynamic>> tourPlan = [
    {
      'image': 'https://cdn-icons-png.flaticon.com/128/666/666201.png',
      'name': 'Single'
    },

    {
      'image': 'https://cdn-icons-png.flaticon.com/128/1441/1441132.png',
      'name': 'Friends'
    },

    {
      'image': 'https://cdn-icons-png.flaticon.com/128/57/57992.png',
      'name': 'Family'
    },

    {
      'image': 'https://cdn-icons-png.flaticon.com/128/1688/1688154.png',
      'name': 'Couple'
    }
  ];

  List<Map <String, dynamic>> tourPlace = [
    {
      'image': 'https://cdn-icons-png.flaticon.com/128/877/877951.png',
      'name': 'Rajshahi'
    },

    {
      'image': 'https://cdn-icons-png.flaticon.com/128/2082/2082045.png',
      'name': 'Naogaon'
    },

    {
      'image': 'https://cdn-icons-png.flaticon.com/128/877/877951.png',
      'name': 'Dinajpur'
    },

    {
      'image': 'https://cdn-icons-png.flaticon.com/128/2082/2082045.png',
      'name': 'Nator'
    }
  ];

  List<Map <String, dynamic>> foodPlan = [
    {
      'image': 'https://cdn-icons-png.flaticon.com/128/877/877951.png',
      'name': 'Breakfast'
    },

    {
      'image': 'https://cdn-icons-png.flaticon.com/128/2082/2082045.png',
      'name': 'Lunch'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const FaIcon(FontAwesomeIcons.alignLeft),
          onPressed: widget.drawer
        ),
        title: const Text('Explore Here', style: TextStyle(fontFamily: 'Exo2'),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 54, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextWidget(
                text: 'Hi 🖐',
                fontSize: 24,
                color: Colors.white,
              ),
              const TextWidget(
                text: "Let's see our picnic plan !",
                color: Colors.white38,
              ),
          
              // Tour Palnning Part
              const SizedBox(height: 18),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: 'Tour Plan',
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  TextWidget(
                    text: 'See details',
                    fontSize: 12,
                    color: Colors.orange,
                  )
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  primary: false,
                  itemCount: tourPlan.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(6),
                      margin: const EdgeInsets.only(right: 10),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white54)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.network(tourPlan[index]['image'], height: 40, color: Colors.white,),
                          TextWidget(
                            text: tourPlan[index]['name'],
                            fontSize: 12,
                          )
                        ],
                      ),
                    );
                  }
                ),
              ),
          
              // Tour Place Part
              const SizedBox(height: 22),
              const TextWidget(
                text: 'Tour Places',
                fontSize: 18,
                color: Colors.white,
              ),
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: .8
                ),
                itemCount: tourPlace.length,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.white38)
                    ),
                    child: Text(tourPlace[index]['name']),
                  );
                }
              ),
          
              // Food Planning Part
              const SizedBox(height: 18),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: 'Food Plan',
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  TextWidget(
                    text: 'See details',
                    fontSize: 12,
                    color: Colors.orange,
                  )
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  primary: false,
                  itemCount: foodPlan.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(6),
                      margin: const EdgeInsets.only(right: 10),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white54)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.network(foodPlan[index]['image'], height: 40),
                          TextWidget(
                            text: foodPlan[index]['name'],
                            fontSize: 12,
                          )
                        ],
                      ),
                    );
                  }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}