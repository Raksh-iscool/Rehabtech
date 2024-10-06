import 'package:flutter/material.dart';

class Analysis extends StatelessWidget {
  const Analysis({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text('Analysis', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Column(
                children: [
                  AnalysisCard(
                    color: Colors.yellow.shade100,
                    child: Image.asset('assets/images/image1.png'),
                  ),
                  const SizedBox(height: 20),
                  AnalysisCard(
                    color: Colors.green.shade100,
                    child: Image.asset('assets/images/image2.png'),
                  ),
                  const SizedBox(height: 20),
                  AnalysisCard(
                    color: Colors.blue.shade100,
                    child: Image.asset('assets/images/image3.png'),
                  ),
                  const SizedBox(height: 20),
                  AnalysisCard(
                    color: Colors.red.shade100,
                    child: Image.asset('assets/images/image4.png'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AnalysisCard extends StatelessWidget {
  final Color color;
  final Widget child;

  const AnalysisCard({required this.color, required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 200,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: child, // Insert the image widget here
        ),
      ),
    );
  }
}
