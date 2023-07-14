import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../components/reusable.dart';
class help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              child:   Expanded(
                  child: Container(
                    alignment:Alignment.bottomRight ,
                    child:  const Image(
                      image: AssetImage(
                          'images/22.png'),
                      fit: BoxFit.fitHeight,
                    ),)),),
            Expanded(
              child: Container(
                width:MediaQuery.of(context).size.width,
                child:  const Expanded(
                  child: Image(image: AssetImage('images/1.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ) ,
          Column(
            children: [
              Padding(
    padding: const EdgeInsets.only(
    left: 60
    ),
    child: navBar(context, false, false, false, true, false, false, false, true),
    ),
            const SizedBox(
              height:40
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Padding(
                  padding:  const EdgeInsets.only(left: 60),
                  child: Expanded(
                    child: Row(
                      children: [
                        Text('Need\n help?',
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: HexColor("E30175"),
                          ),
                        ),
                        Icon(Icons.face,
                        color: HexColor("E30175"),
                          size: 70,
                        )
                      ],),
                  ),
                ),
              ),
              Container(
                  decoration:  BoxDecoration(
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
                      ],
                      borderRadius: BorderRadius.circular(10)
                  ),
                  height: MediaQuery.of(context).size.height*0.77,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                          child:
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Here are our contacts in case you are facing technical isseues:',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 40,
                                            fontWeight: FontWeight.bold,
                                      color: HexColor("E30175"),
                                    ),
                                  ),
                                  const SizedBox(
                                    height:60,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.dataset_linked,
                                        color: HexColor("E30175"),
                                        size: 60,
                                      ),
                                      Text('https://www.linkedin.com/in/dahlia-ali-b51b3124a',
                                        textAlign: TextAlign.start, style: TextStyle(
                                            fontSize: 40,
                                          color: HexColor("E30175"),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height:40,
                                  ),
                                  Row
                                    (
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.whatsapp, color: HexColor("E30175"),
                                        size: 60,
                                      ),
                                      Text('01030346943',
                                        style: TextStyle(
                                            fontSize: 40,
                                          color: HexColor("E30175"),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height:40,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.email_outlined,
                                        color: HexColor("E30175"),
                                        size: 60,
                                      ),
                                      Text('dalia352001@std.mans.edu.eg',
                                        style: TextStyle(
                                            fontSize: 40,
                                          color: HexColor("E30175"),
                                        ),
                                      ),
                                    ],
                                  ),

                                ],
                              ),
                            )
                          ),
                    ),
            ],
          )],)
          ],
        )
    );
  }
}
