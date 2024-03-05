import 'package:flutter/material.dart';

class HisMessageBubble extends StatelessWidget {
  const HisMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
         decoration: BoxDecoration(color: colors.primary, borderRadius: BorderRadius.circular(20)),
         child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
          child:  Text("Ut enim ad minim veniam, quis nostrud exercitation ullamco",
          style: TextStyle(color: Colors.amber),)),
        ),
        const SizedBox(height: 20,)
      ],
    );
  }
}