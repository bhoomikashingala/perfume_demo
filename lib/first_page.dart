import 'package:flutter/material.dart';
import 'package:perfume_demo/pass_detail.dart';

class ImageModel {
  final String image;
  final String name;
  final String price;

  ImageModel(this.image, this.name, this.price);

}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<ImageModel> itemlist = [];

  @override
  void initState() {
    itemlist = [
      ImageModel('https://cdn.wallpaper.com/main/styles/responsive_1460w_scale/s3/patcholi_dg.jpg?itok=bBFax2n8',  "Black Dark", "\$10"),
      ImageModel('https://c0.wallpaperflare.com/preview/538/579/644/bleu-de-chanel-eau-de-parfum-bottle.jpg',  "Bleu-de-chanel", "\$10"),
      ImageModel('https://i.pinimg.com/originals/ed/b8/41/edb8411d5a9909ccb9acc84a41e7697b.jpg',  "Black Dark", "\$10"),
      ImageModel('https://images.unsplash.com/photo-1595389294696-ae969ff733a8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bWVuJTIwcGVyZnVtZXxlbnwwfHwwfHw%3D&w=1000&q=80',  "Versace Eros", "\$14"),
      ImageModel('https://i.pinimg.com/736x/73/89/3a/73893a0f060b99c544f7243f21271c99.jpg',  "Versace Eros", "\$15"),
      ImageModel('https://cf.shopee.com.my/file/35b08c6a1e89f11ea618805336c02cd7',  "CK be", "\$18"),
      ImageModel('https://wallpapercave.com/wp/wp7212950.jpg',  "Je Malone", "\$15"),
      ImageModel('https://cdn.wallpaper.com/main/styles/fp_480x294/s3/2021/08/pat_landscape.jpg',  "Splendida", "\$14"),
      ImageModel('https://i.pinimg.com/originals/93/ae/64/93ae64ffec5d9ab21184e8f70a5d06b0.jpg',  "Formule De Grrase", "\$10"),
      ImageModel( 'https://i.pinimg.com/736x/1b/a1/15/1ba115502dafb24b4e57b590053ace00.jpg',  "Jasmin Noir", "\$12"),
      ImageModel( 'https://images.unsplash.com/photo-1610245169254-1cfd8bd165bf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHBlcmZ1bWUlMjBtZW58ZW58MHx8MHx8&w=1000&q=80', "Bvlgari Ae Gemme", "\$13"),
      ImageModel( 'https://images.unsplash.com/photo-1610461888750-10bfc601b874?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHBlcmZ1bWV8ZW58MHx8MHx8&w=1000&q=80',  "Prada","\$16"),
      ImageModel( 'https://i.pinimg.com/736x/1b/a1/15/1ba115502dafb24b4e57b590053ace00.jpg',"Premifrf Luxe", "\$11"),
      ImageModel( 'https://i.pinimg.com/originals/08/5c/2d/085c2db1ab4543b65a10adfcfbeedf43.jpg',  "Formule De Grrase", "\$13"),
      ImageModel(  'https://fimgs.net/himg/o.ayvEnchnz9o.jpg',  "nuts&fut", "\$10"),
      ImageModel(  'https://images.squarespace-cdn.com/content/v1/59da11e98419c28f51bab499/1568345122515-5Z847U4A0FUP6WMBHPPU/FortManle-1220_0101.jpg',"Aventus", "\$15"),
      ImageModel(  'https://4.img-dpreview.com/files/p/TS560x560~forums/61889506/bf61733c362c47cda582038cb220cee9',"Meraki", "\$16"),
      ImageModel(   'https://www.harrods.com/BWStaticContent/50000/bd14d78c-e8b0-43d7-8965-2a4bf102c5c3_m-hero-t2-creed-04-11-21.jpg', "Oreed", "\$19"),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://w0.peakpx.com/wallpaper/778/40/HD-wallpaper-black-dark-sandalwood-scent-smell.jpg',),
                fit: BoxFit.cover,
                opacity: 0.8,
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.only(top: 200,),
                  child: Text('Royal',style: TextStyle(fontSize: 60,color: Colors.white,fontFamily: 'Playfair Display'),),
                ),
                Text('Quality',style: TextStyle(fontSize: 35,color: Colors.white70,fontFamily: 'Playfair Display'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Beauty is an exquisite flower \n and its perfume is virtue.',style: TextStyle(fontSize: 22,color: Colors.white54,fontFamily: 'Oswald'),
                ),
                SizedBox(
                  height: 70,
                ),
                Text('Perfumes',style: TextStyle(fontSize: 25,fontFamily: 'PT Serif',color: Colors.white),),
                Container(
                  height: 280,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: itemlist.length ,
                      itemBuilder: (context, index)
                      {
                        return _perfumeItem(
                          image: itemlist[index].image,
                          name: itemlist[index].name,
                          price: itemlist[index].price,
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PassDetails(model: itemlist[index])));
                          }
                        );
                      },
                    ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _perfumeItem({
  String? image,
  String? name,
  String? price,
  required void Function() onTap
}) {
  return GestureDetector(
    onTap: onTap,
    child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),

        color: Color(0xFFe1ad21),
        child: Container(
          height: 210,
          width: 210,

          // color: Colors.pink,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  image!,
                  height: 220,
                  fit: BoxFit.cover,
                  width: 300,

                ),

              ),
              SizedBox(
                height: 4,
              ),
              Text(
                name!,
                style: TextStyle(fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                price!,
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),

            ],
          ),
        ),

    ),
  );
}

