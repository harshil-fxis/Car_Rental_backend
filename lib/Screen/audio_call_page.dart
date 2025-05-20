import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AudioCallPage extends StatefulWidget {
  const AudioCallPage({super.key});

  @override
  State<AudioCallPage> createState() => _AudioCallPageState();
}

class _AudioCallPageState extends State<AudioCallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
        
            image: DecorationImage(
              image: AssetImage("images/icon-logo/bg img.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(""),
              Column(
                children: [
                  Stack(
                    children: [
                      Image.asset("images/icon-logo/51ac482cb4330fe9e521210a8c1834fc (1).png"),
                      Positioned(
                        right: 8,
                        bottom: 6,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20)
                          ),
                      ))
                    ],
                  ),
                  SizedBox(height: 15,),
                  Text("Hela Quintin",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800,color: Colors.white),),
                  SizedBox(height: 0,),
                  Text("00:05:10",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.white),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                child: Container(
                  height: 65,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40,right: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(child: Image.asset("images/icon-logo/Group 1162.png")),
                        Image.asset("images/icon-logo/Group 1174.png"),
                        Image.asset("images/icon-logo/Group 1173.png"),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: Image.asset("images/icon-logo/Group 1170.png")),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}