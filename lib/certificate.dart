import 'package:flutter/material.dart';

class Certificate extends StatelessWidget {
  const Certificate({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/icons/AI-ML.png',
      'assets/icons/cloud.png',
      'assets/icons/cybersecurity.jpeg',
      'assets/icons/Java.png',

    ];

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Center(
          child: const Text(
            'CERTIFICATION',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, letterSpacing: 2,),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(2.0),
            child: Text(
              'CERTIFICATES',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: InteractiveViewer(
                    minScale: 0.5,
                    maxScale: 4.0,
                    child: Image.asset(
                      images[index],
                      height: 600,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}