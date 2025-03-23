import 'package:flutter/material.dart';

class Marksheet extends StatelessWidget {
  const Marksheet({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/icons/10th marksheet.png',
      'assets/icons/12th marksheet.png',
      'assets/icons/Transcript Marksheet.png',
    ];

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Center(
          child: const Text(
            'Marksheets',
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
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: InteractiveViewer(
                    minScale: 0.5,
                    maxScale: 4.0,
                    child: Container(
                      height: 600,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          images[index],
                          fit: BoxFit.contain,
                        ),
                      ),
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
