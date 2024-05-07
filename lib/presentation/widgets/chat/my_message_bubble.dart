import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;


    return  Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration:  BoxDecoration(
            color: colors.primary,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
             // bottomRight: Radius.circular(12),
              bottomLeft: Radius.circular(12)
            ),
          ),
          child: const Padding(
            padding:  EdgeInsets.symmetric(horizontal:20, vertical: 10),
            child:  Text('Messages Bubbles', style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}