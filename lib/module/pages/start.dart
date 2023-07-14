import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'package:projectt3/module/pages/result.dart';
import '../components/reusable.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart'show basename;
class start extends StatefulWidget {
  @override
  State<start> createState() => _State();
}
class _State extends State<start> {
  Future pickImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;
    var stream = http.ByteStream(image.openRead());
    var uri = Uri.parse('http://209.38.224.32:5000/predict');
    var length = await image.length();
    var request = http.MultipartRequest('POST', uri);
    var multipartFile = http.MultipartFile('file', stream, length,
        filename: basename(image.path));
    request.files.add(multipartFile);
    var response = await request.send();
    var body = await response.stream.bytesToString();
    var result = jsonDecode(body) as Map<String, dynamic>;
    var prediction = result['prediction'];
    return prediction;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child:
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: const Expanded(
                child: Image(image: AssetImage('images/BG.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                  padding:
                  const EdgeInsetsDirectional.only(
                      start: 60,
                      top: 0
                  ),
                  child: navBar(
                      context,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false)),
              Row(
                children: [
                  Stack(
                    children: const [
                      Image(image: AssetImage('images/ntap.png'),
                        width: 400,
                        height: 400,
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      const Image(image: AssetImage('images/nlab.png'),
                        width: 1100,
                        height: 650,
                        fit: BoxFit.fitWidth,
                      ),
                      Column(
                        children: [

                          Padding(padding: const EdgeInsets.only(top: 200, left: 420),
                            child:
                            Container(
                              alignment: Alignment.bottomRight,
                              decoration: BoxDecoration(
                                  color: HexColor("E30175"),
                                  borderRadius: BorderRadius.circular(40)
                              ),
                              child: MaterialButton(onPressed: () {
                                pickImage().then((value) =>
                                {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Result(prediction: value,)))
                                });
                              },
                                padding: const EdgeInsetsDirectional.all(20),
                                child:
                                const Text('Upload Image',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontFamily: "Cinzel"
                                  ),),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40, left: 420),
                            child: Row(
                              children: [
                                Text('or drop a ',
                                  style: TextStyle(
                                      color: HexColor("E30175"),
                                      fontSize: 35
                                  ),
                                ),
                                Stack(
                                  children: [
                                    const Image(
                                      image: AssetImage('images/rect1.png'),
                                      height: 45,
                                      width: 60,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text('file',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: HexColor("E30175"),
                                              fontSize: 35)
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
