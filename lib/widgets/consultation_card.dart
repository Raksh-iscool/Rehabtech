import 'package:flutter/material.dart';

class ConsultationCard extends StatelessWidget {
  final String name;
  final Color color;
  const ConsultationCard({
    required this.name,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 180,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 28,
                  backgroundImage: const AssetImage('assets/images/doctor.png'),
                ),
              ),
              const SizedBox(width: 10),
                Column(
                children: [
                  Text(
                  '10:00 AM',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  ),
                  Text(
                  'Oct 10',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  ),
                ],
                ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Add your onPressed code here!
            },
            child: const Text('Join Now',style: const TextStyle(color:Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green.shade300, // Background color
              foregroundColor: color, // Text color
            ),
          ),
        ],
      ),
    );
  }
}