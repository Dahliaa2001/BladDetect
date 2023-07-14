import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:projectt3/module/components/reusable.dart';
class profile extends StatefulWidget {
  @override
  State<profile> createState() => _profileState();
}
class _profileState extends State<profile> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Stack(
    children: [
      Expanded(
        child:  Container(
          child: Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: const Image(image: AssetImage('images/Rectangle.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
      Padding(
          padding:
          const EdgeInsetsDirectional.only(
             // start:60,
              top: 0
          ) ,
      child:
      Column(
      children:[
      Padding(
        padding: const EdgeInsets.only(left:60),
        child: navBar(context,false, true, false, false, false ,true, false, false),
      ),
        const SizedBox(
          height: 30,
        ),
        Expanded(child:
        Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          width: MediaQuery.of(context).size.width*.85,
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
                          child:Column(
                            children: [
                              Text('what is bladder cancer?',
                              style: TextStyle(fontSize: 35 , color: HexColor("E30175"),),textAlign: TextAlign.center,),
                              const Text(
                                  ' Bladder cancer starts when cells that make up the urinary bladder'
                                  ' start to grow out of control. As more cancer cells develop, they can'
                                  ' form a tumor and, with time, spread to other parts of the body.',
                                style: TextStyle(
                                    fontSize: 30
                                ),
                              ),
                            ],
                          )
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          width: MediaQuery.of(context).size.width*.85,
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
                          child: Column(
                            children:  [
                              Text('Are there any syptomps?',
                                style:
                                TextStyle(
                                  fontSize: 35 ,
                                  color: HexColor("E30175"),),
                                textAlign: TextAlign.center,),
                              const Text(
                                ' The symptoms of bladder cancer can vary from person to'
                                'person. The most common symptom is blood in the urine,'
                                '  called hematuria. It’s often slightly rusty to bright red in color.'
                                ' You may see blood in your urine at one point, then not see it'
                                ' again for a while. Sometimes there are very small amounts of'
                                ' blood in the urine that can only be found by having a test done.',
                              style: TextStyle(
                                  fontSize: 30,

                              ),
                            ),],
                          )
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        width: MediaQuery.of(context).size.width*.85,
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
                        child: Column(
                          children:  [
                            Text('What are the causes?', style:
    TextStyle(
    fontSize: 35 ,
    color: HexColor("E30175"),),
    textAlign: TextAlign.center,),
                            const Text('Bladder cancer is caused by certain changes to the way bladder cells'
                             ' function, especially how they grow and divide into new cells. There'
                             ' are many risk factors for bladder cancer, but many do not directly'
                             ' cause cancer. Instead, they increase the chance of DNA damage in'
                             ' cells that may lead to bladder cancer.',style: TextStyle(
                              fontSize: 30
                            ),)
                          ],
                        ),
                      ),
                    ),
                  ]),
            ))),
    ]  ),)
    ]),
    )
;
}}
