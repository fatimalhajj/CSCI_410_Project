import 'package:flutter/material.dart';
import 'package:project/cpu.dart';
import 'page2.dart';
class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  final TextEditingController _controllercpi = TextEditingController();
  final TextEditingController _controllerIc = TextEditingController();
  final TextEditingController _controllerfreq = TextEditingController();

  @override
  void dispose() {
    _controllercpi.dispose();
    _controllerIc.dispose();
    _controllerfreq.dispose();
    super.dispose();
  }

  void openpage2() {
      double cpi = double.parse(_controllercpi.text);
      double Ic = double.parse(_controllerIc.text);
      double freq = double.parse(_controllerfreq.text);
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const page2(),
            settings: RouteSettings(arguments: cpu(cpi, Ic, freq))),
      );
    }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculate CPU and MIPS',style: TextStyle(color: Colors.indigo,fontSize: 25, ),),
        centerTitle: true,
        leading: IconButton(onPressed: (){},icon: Icon(Icons.menu),color: Colors.indigo,),
        backgroundColor: (Colors.black12),
      ),
      body: Center(child:
        Column(children: [
          const SizedBox(height: 20,),
          Text('Enter CPI: ' ,style: TextStyle(color: Colors.indigo, fontSize: 20,fontStyle: FontStyle.italic),),
          const SizedBox(height: 10,),
          SizedBox(width: 300, height: 70,
          child: TextField(controller: _controllercpi, keyboardType: TextInputType.number,
          decoration: const InputDecoration(border: OutlineInputBorder(),helperText:' CPI'),),),
          const SizedBox(height: 20,),

          Text('Enter the sum of instruction count: ',style: TextStyle(color: Colors.indigo, fontSize: 20,fontStyle: FontStyle.italic)),
          const SizedBox(height: 10,),
          SizedBox(width: 300, height: 70,
            child: TextField(controller: _controllerIc, keyboardType: TextInputType.number,
              decoration: const InputDecoration(border: OutlineInputBorder(),helperText: ' sum of inst count  '),),),
          const SizedBox(height: 20,),

          Text('Enter the Frequency: '  ,style: TextStyle(color: Colors.indigo, fontSize: 20,fontStyle: FontStyle.italic)),
          const SizedBox(height: 10,),
          SizedBox(width: 300, height: 70,
            child: TextField(controller: _controllerfreq, keyboardType: TextInputType.number,
              decoration: const InputDecoration(border: OutlineInputBorder(),helperText: ' Frequency '),),),
          const SizedBox(height: 20,),

          ElevatedButton(onPressed:openpage2,
              child: const Icon(Icons.computer_outlined, size: 50,color: Colors.indigo,)),
        ],),),
    );
  }
}
