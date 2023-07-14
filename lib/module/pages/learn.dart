import 'package:flutter/material.dart';
import '../components/reusable.dart';
class learn extends StatefulWidget {
  @override
  State<learn> createState() => _learnState();
}
class _learnState extends State<learn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: Container(
              width:MediaQuery.of(context).size.width,
              child:  const Expanded(
                child: Image(image: AssetImage('images/Rectangle4.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ) ,
          Padding(
              padding:
              const EdgeInsetsDirectional.only(
                  start:60,
                  top: 0
              ) ,
              child: navBar(context,true,false,false,false,true,false,false,false)),
          Center(
            child: Expanded(
              child: Container(
              decoration:
              BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
              color: Colors.white,
    boxShadow: const [
    BoxShadow(
    color:Colors.grey,
    offset: Offset(4,4),
    blurRadius: 15,
    spreadRadius: 1
    ),
    BoxShadow(
    color:Colors.white,
    offset: Offset(-4,-4),
    blurRadius: 15,
    spreadRadius: 1
    )
              ]),
                height: MediaQuery.of(context).size.height*0.65,
                width: MediaQuery.of(context).size.width*0.65,
                child:Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Expanded(
                    child: Row(
                      children: [
                       Expanded(
                           child:
                           Text('Feeling like you are in the middle of no where?'
                               'Here are some tips to help you run this app like a geek 💡'
                               'On the home screen, you shall find a button that says get started that will help you to upload the photos of the scanned tissues, then click on '
                               'get the result button'
                               'and you can predict the cases you are analyzing.'
                               'Don\'nt forget to check other features with more information in our app using profile, help, about, buttons✅',
                           style: TextStyle(
                             fontSize: 28,
                                 color: Colors.grey
                           ),
                           ),
                       ),
                        Expanded(
                          child: Container(
                              decoration: const BoxDecoration(
                              ),
                              child:  const Padding(
                                padding: EdgeInsets.only(left: 40.0),
                                child:Image(image: AssetImage ('images/Picture1.png',),
                                  width: 600,
                                  height: 450,
                                ), )
                          ),
                        ),
                      ],
                    ),
                  ),
                ) ,
            ),
          )
          )],
      ),
    );
  }
}
