import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
         decoration: BoxDecoration(color: colors.secondary, borderRadius: BorderRadius.circular(20)),
         child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
          child:  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit",
          style: TextStyle(color: Colors.amber),)),
        ),
        const SizedBox(height: 20,)
      ],
    );
  }
}