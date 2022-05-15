import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:perfume_demo/first_page.dart';

class PassDetails extends StatefulWidget {

  final ImageModel? model;
  const PassDetails({Key? key, this.model}) : super(key: key);

  @override
  _PassDetailsState createState() => _PassDetailsState();
}

class _PassDetailsState extends State<PassDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black54,
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start ,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
             child: Image.network(widget.model!.image,fit: BoxFit.cover,height: 400,width: 500,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Row(
                children: [
                  Container(
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration( color: Colors.black45,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(child: Text("10%",style: TextStyle(fontSize: 30,color: Colors.white),))
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration( color: Colors.black45,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(child: Text("25%",style: TextStyle(fontSize: 30,color: Colors.white),))
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration( color: Colors.black45,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(child: Text("45%",style: TextStyle(fontSize: 30,color: Colors.white),))
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration( color: Colors.black45,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(child: Text("35%",style: TextStyle(fontSize: 30,color: Colors.white),))
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(widget.model!.name,style: TextStyle(fontFamily: 'Oswald',fontSize: 30,color: Colors.white),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(widget.model!.price,style: TextStyle(fontSize: 20,color: Colors.white70),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 10,right: 15),
              child: Text("Perfumes can be defined as substances that emit and diffuse a pleasant and fragrant odor.",style: TextStyle(fontSize: 18,color: Colors.white54),),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30,top: 50),
              child: Row(
                children: [
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(color: Colors.black87,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(Icons.add,color: Colors.white,),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 65,
                    width: 250,
                    decoration: BoxDecoration(color: Colors.black87,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(widget.model!.price,style: TextStyle(fontSize: 22,color: Colors.white70),),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.arrow_right_alt,color: Colors.white,size: 45,)
                      ],
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ) ,
    );
  }
}

// child: Text(),

