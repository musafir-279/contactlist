import 'dart:math';

import 'package:flutter/material.dart';

class Contactlist extends StatelessWidget {
  const Contactlist({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> contacts = [
      {'name': 'FAyis', 'phone': '7559870203'},
      {'name': 'Ashwin', 'phone': '9495766053'},
      {'name': 'Fasil', 'phone': '9946140737'},
      {'name': 'Sndraa', 'phone': '9745710658'},
      {'name': 'Alita', 'phone': '7510199671'},
      {'name': 'Drishya', 'phone': '9995296251'},
      {'name': 'Murshida', 'phone': '9946140737'},
      {'name': 'Hiba', 'phone': '9745710658'},
      {'name': 'Saju', 'phone': '7510199671'},
      {'name': 'Shifa', 'phone': '9995296251'},
    ];

    //function to generate random colors
    Color generateRandomcolor() {
      final Random random = Random();
      return Color.fromARGB(
          255, random.nextInt(256), random.nextInt(256), random.nextInt(256));
    }

    //function to get contact name initials
    String getcontactinitials(String name) {
      List<String> parts = name.split(" ");
      String initials =
          parts.length > 1 ? parts[0][0] + parts[1][0] : parts[0][0];
      return initials.toUpperCase();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contact List",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: contacts.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            String name = contacts[index]['name']!;
            String phone = contacts[index]['phone']!;
            Color avatarcolor = generateRandomcolor();
            String contactInitials = getcontactinitials(name);
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: avatarcolor, //adding random  bg colors

                child: Text(
                  contactInitials,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(name),
              subtitle: Text(phone),
            );
          },
        ),
      ),floatingActionButton: FloatingActionButton(onPressed: () {} ,child: Icon(Icons.add),),
    );
  }
}
