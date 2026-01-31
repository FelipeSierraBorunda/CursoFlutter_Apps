import 'package:flutter/material.dart';

class MessageBox extends StatelessWidget {
  const MessageBox({super.key});dxsdsd

  @override
  Widget build(BuildContext context) {
final colors = Theme.of(context).colorScheme; 

final OutlineInputBorder = UnderlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: BorderSide(
        color: colors.primary,
      ),
    );

final inputDecoration = InputDecoration
      (
        enabledBorder: OutlineInputBorder,
        focusedBorder: OutlineInputBorder,
        filled: true,
        fillColor: colors.primaryContainer,
        suffixIcon: IconButton(onPressed: (){
          
        }, 
        icon: Icon(  Icons.send_outlined)),
      );

    return TextFormField
    (
      decoration: inputDecoration,
      onChanged: (value) {
        print(  'value: $value'  );
      },
    );
  }
}