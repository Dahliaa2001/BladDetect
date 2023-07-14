import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class Result extends StatelessWidget {
  List<dynamic> prediction=[];
   Result({super.key, required this.prediction,
   });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            Stack(
              children:[
                Container(
                  alignment: Alignment.bottomCenter,
                    child:
                    const Image(
                        image:
                        AssetImage('images/Rectangle.png'),
                      fit: BoxFit.fitWidth,
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Center(
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('images/bladder.png'),
                      height: 300
                      ),
                      Text('     the tumor percentage is: ${(prediction[1]*10000).round()/100}%',
                      style: TextStyle(fontSize: 50,
                        color: HexColor("E30175"),
                      ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(' while the non tumor percentage is: ${(prediction[0]*10000).round()/100}%',
                      style: TextStyle(fontSize: 50,
                        color: HexColor("E30175"),
                      ),
                      ),],
              ),
                  ),
                ),]
            )
       );
    }
}