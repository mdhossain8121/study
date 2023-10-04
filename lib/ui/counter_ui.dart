import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterApp extends StatelessWidget{
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=>CounterProvider())
    ],
    child: const MaterialApp(
      home: CounterUi(),
    ),);
  }
}

class CounterUi extends StatefulWidget{
  const CounterUi({super.key});

  @override
  State createState() {
    return CounterUiState();
  }
}

class CounterUiState extends State<CounterUi>{

  @override
  Widget build(BuildContext context) {
    var counterProvider = Provider.of<CounterProvider>(context);
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(title: const Text("Counter App"),),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: (){
                    counterProvider.increment();
                  },
                  icon: const Icon(Icons.plus_one)
                ),
                Text(counterProvider.counter.toString()),
                IconButton(
                  onPressed: (){
                    counterProvider.decrement();
                  },
                  icon: const Icon(Icons.exposure_minus_1)
                )
              ],
            ),
          ),
        )
    );
  }
}

