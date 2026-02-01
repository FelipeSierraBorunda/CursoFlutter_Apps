import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget 
{
  final String messageText;

  const MyMessageBubble({
    super.key,
    required this.messageText,
  });

  @override
  Widget build(BuildContext context) {
  

  final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
          Container(
            decoration: BoxDecoration(
              color: colors.primary,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child:  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: Text(messageText, style: TextStyle(color: colors.onPrimary, fontWeight: FontWeight.bold)),
            ),
          ),
           SizedBox(height: 10.0),
      ],
    );
  }
}