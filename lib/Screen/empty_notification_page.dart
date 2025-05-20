import 'package:flutter/material.dart';

class EmptyNotificationPage extends StatefulWidget {
  const EmptyNotificationPage({super.key});

  @override
  State<EmptyNotificationPage> createState() => _EmptyNotificationPageState();
}

class _EmptyNotificationPageState extends State<EmptyNotificationPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
         appBar: AppBar(
            toolbarHeight: 100,
            backgroundColor: Colors.grey[200],
            title: Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(onTap: (){
                    Navigator.pop(context);
                  }, 
                  child: Image.asset("images/icon-logo/Group 197.png",height: 40,)),
                  Text("Notification",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                  Image.asset("images/icon-logo/Group 198.png",height: 40,)
                ],
              ),
            ),
          ),
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/icon-logo/Group 1018.png"),
                SizedBox(height: 20,),
                Text("No NOTIFICATIONS",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Text("Clutter Cleared Well Notify You When There Is Something New.",textAlign: TextAlign.center,),
                ),
              ],
            ),
          ),
      ),
    );
  }
}