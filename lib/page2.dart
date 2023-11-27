import 'package:flutter/material.dart';
import 'package:project/cpu.dart';
import 'cpu.dart';
import 'page1.dart';
class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    final cpu = ModalRoute.of(context)!.settings.arguments ;
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Result: ',style: TextStyle(color: Colors.indigo,fontSize: 25, )),
        centerTitle: true,
        leading: IconButton(onPressed: (){},icon: Icon(Icons.menu),color: Colors.indigo,),
        backgroundColor: (Colors.white38),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Text(cpu.toString(), style: const TextStyle(color: Colors.blue, fontSize: 30,
            fontStyle: FontStyle.normal , fontWeight: FontWeight.bold,),),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop();
            }, child: const Icon(Icons.computer, size: 50,color: Colors.indigo,))
          ],
        ),
      ),
    );
  }
}
