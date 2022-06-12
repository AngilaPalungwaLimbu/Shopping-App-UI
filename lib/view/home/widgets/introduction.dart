import 'package:flutter/material.dart';

class Introduction extends StatelessWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Hey Nancy,',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        'Begin your shopping!!',
        style: TextStyle(fontSize: 15, color: Colors.grey[500]),
      ),
      trailing: Icon(Icons.notifications_outlined,size: 32,),
    );
  }
}
