import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:openapi_getx/comman/constant.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Profile'),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            minRadius: 80,
            child: Text('IG',style: TextStyle(fontSize: 80),),
          ),
          SizedBox(height: SPACE25,),
          Text('Ishit Gami',style: TextStyle(fontSize: 30),),
            SizedBox(height: SPACE4,),
            Text('ishitgami01@gmail.com',style: TextStyle(fontSize: 18,color: Colors.black54),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Divider(),
          ),
          Text('Build with ❤️ by ishit',style: TextStyle(fontSize: 12,color: Colors.black87),),
        ],
      ),
    );
  }
}