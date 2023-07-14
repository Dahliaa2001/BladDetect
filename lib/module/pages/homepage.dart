import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:projectt3/module/components/reusable.dart';
import 'package:projectt3/module/pages/start.dart';
import 'learn.dart';
import 'package:simple_animations/simple_animations.dart';
class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _State();
}
class _State extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
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
                height: MediaQuery.of(context).size.height*0.65,
                width: MediaQuery.of(context).size.width*0.65,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Expanded(
                            child: Row(
                              children:  [
                              Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(
                                  ),
                                  child:  const Padding(
                                    padding: EdgeInsets.only(left: 40.0),
                                    child:Image(image: AssetImage ('images/bladder1.png',),
                                      width: 600,
                                      height: 450,
                                    ), )
                                  ),
                              ),
                                   Padding(
                                    padding: const EdgeInsets.all(40.0),
                                      child: Expanded(
                                          child: Column(
                                            children:[
                                              Row(
                                                children: [
                                                 Text('Your',
                                            style:
                                            TextStyle(color:HexColor("EA1D86"),
                                            fontSize: 35
                                            ),
                                            ),
                                                 Text(' free',
                                                  style:
                                                  TextStyle(color:HexColor("E30175").withAlpha(115),
                                                      fontSize: 35
                                                  ),
                                                ),
                                              Text(' way of diagnoses',
                                                style:
                                                TextStyle(color:HexColor("EA1D86"),
                                                    fontSize: 35
                                                ),
                                              ),]),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                         Row(children: [
                                          MaterialButton(onPressed:(){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>start()));
                                          },
                                              color: Colors.white,
                                              child:  Text('Start',
                                              style: TextStyle(fontSize: 25,
                                              color:HexColor("E30175")
                                              ),
                                              )),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            MaterialButton(onPressed: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>learn()));
                                            },
                                              color:HexColor("E30175") ,
                                              padding: const EdgeInsets.only(right: 10,left: 10,top: 8,bottom: 8),
                                              child:
                                              const Text('Read more',
                                              style: TextStyle(fontSize: 25,
                                              color: Colors.white
                                              ),

                                              ),
                                            ),
                                         ],)
                                            ]),
                                        ),
                                      ),
                                ]),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
