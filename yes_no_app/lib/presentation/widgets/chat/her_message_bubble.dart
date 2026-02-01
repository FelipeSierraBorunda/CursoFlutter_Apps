import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class HerMessageBubble extends StatelessWidget {
  final Message messageText;

  const HerMessageBubble({
    super.key,
    required this.messageText,
  });

  @override
  Widget build(BuildContext context) {
final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Container(
            decoration: BoxDecoration(
              color: colors.secondary,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child:  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: Text(messageText.text, style: TextStyle(color: colors.onSecondary, fontWeight: FontWeight.bold)),
            ),
          ),
           SizedBox(height: 10.0),
           _ImageBubble(image: messageText.imageUrl),
           SizedBox(height: 10.0),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  final String? image;

  const _ImageBubble({required this.image});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
 
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Image.network(
        image ?? 'https://www.google.com/logos/doodles/2023/celebrating-the-2023-womens-world-cup-champions-spain-6753651837110162.3-2xa.gif',
        width: size.width * 0.7,
        height: 150 ,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null ) return child;
          return Container(
         
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: CircularProgressIndicator()
            );
            
        },
      ),
    );
  }
}