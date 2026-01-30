

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget 
{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> 
{
int clickCounter =0;

  @override
  Widget build(BuildContext context) 
  {
    return  Scaffold
    (
      appBar: AppBar
      (
        title: const Text('Counter Screen'),
        actions:[
          IconButton
          (
            onPressed: (){
              setState(() {});
              clickCounter = 0;
            }, 
            icon: Icon( Icons.refresh_rounded)
          ),
        ],
      ),
      
      body: Center
      (
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter',style: TextStyle(fontSize: 160, fontWeight: FontWeight.bold),),
            Text(clickCounter == 1 ? 'Click' : 'Clicks',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),                                                                                                
          ],
        )
      ),
      
      floatingActionButton: 
      Column
      (
          mainAxisAlignment: MainAxisAlignment.end ,
          children: [
          customButton(
            icon: Icons.add_rounded,
            onPressed: (){
              setState(() {});
              clickCounter++;
            },
            ),
          
          SizedBox(height: 10,),
  
          customButton(
            icon: Icons.remove_rounded,
            onPressed: (){
              setState(() {});
              clickCounter--;
            },
            ),

          ],
      )
    );
  }
}

class customButton extends StatelessWidget 
{
  final IconData icon;
  final VoidCallback? onPressed;

  const customButton({
    super.key, 
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) 
  {
    return FloatingActionButton
    (
      enableFeedback: true ,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}

