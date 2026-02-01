import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';

class MessageBox extends StatelessWidget {
  final ValueChanged<String> onValue ;
  const MessageBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) 
  {
      
      final textController = TextEditingController();
      final focusNode  = FocusNode();

      final colors = Theme.of(context).colorScheme; 

      final OutlineInputBorder = UnderlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(
              color: colors.primary,
            ),
          );

      final inputDecoration = InputDecoration
      (
        hintText: 'Type your message',
        enabledBorder: OutlineInputBorder,
        focusedBorder: OutlineInputBorder,
        filled: true,
        fillColor: colors.primaryContainer,
        suffixIcon: IconButton(onPressed: ()
        {
          final textValure = textController.value.text;
          textController.clear();
          onValue(textValure);

        }, 
        icon: Icon(  Icons.send_outlined)),
      );

    return TextFormField
    (
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) 
      {
        textController.clear();
        focusNode.requestFocus();
        onValue(value);
      },

    );
  }
}