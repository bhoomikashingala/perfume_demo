//this horizontal view is only for see this simple way..

//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class HorizontalListView extends StatefulWidget {
//   const HorizontalListView({Key? key}) : super(key: key);
//
//   @override
//   _HorizontalListViewState createState() => _HorizontalListViewState();
// }
//
// class _HorizontalListViewState extends State<HorizontalListView> {
//   // List<String> per_name = ["a", "b", "c", "d", "e", "f", "g", "h"];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(),
//         body: Container(
//           height: 280,
//           child: ListView(
//             scrollDirection: Axis.horizontal,
//             children: [
//               _perfumeItem(
//                   image:
//                       'https://cdn.wallpaper.com/main/styles/responsive_1460w_scale/s3/patcholi_dg.jpg?itok=bBFax2n8',
//                   name: "Black Dark",
//                   price: "\$10"),
//               _perfumeItem(
//                   image:
//                       'https://c0.wallpaperflare.com/preview/538/579/644/bleu-de-chanel-eau-de-parfum-bottle.jpg',
//                   name: "Bleu-de-chanel",
//                   price: "\$12"),
//
//               _perfumeItem(
//                   image:
//                       'https://i.pinimg.com/originals/ed/b8/41/edb8411d5a9909ccb9acc84a41e7697b.jpg',
//                   name: "Blue-de-channel",
//                   price: "\$13"),
//
//               _perfumeItem(
//                   image:
//                       'https://images.unsplash.com/photo-1595389294696-ae969ff733a8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bWVuJTIwcGVyZnVtZXxlbnwwfHwwfHw%3D&w=1000&q=80',
//                   name: "Versace Eros",
//                   price: "\$15"),
//
//               _perfumeItem(
//                   image:
//                       'https://i.pinimg.com/736x/73/89/3a/73893a0f060b99c544f7243f21271c99.jpg',
//                   name: "Versace Eros",
//                   price: "\$15"),
//
//               _perfumeItem(
//                   image:
//                   'https://cf.shopee.com.my/file/35b08c6a1e89f11ea618805336c02cd7',
//                   name: "CK be",
//                   price: "\$8"),
//
//               _perfumeItem(
//                   image:
//                       'https://wallpapercave.com/wp/wp7212950.jpg',
//                   name: "Je Malone",
//                   price: "\$16"),
//
//               _perfumeItem(
//                   image:
//                       'https://cdn.wallpaper.com/main/styles/fp_480x294/s3/2021/08/pat_landscape.jpg',
//                   name: "Splendida",
//                   price: "\$17"),
//
//               _perfumeItem(
//                   image:
//                       'https://i.pinimg.com/736x/1b/a1/15/1ba115502dafb24b4e57b590053ace00.jpg',
//                   name: "Formule De Grrase",
//                   price: "\$10"),
//
//               _perfumeItem(
//                   image:
//                       'https://i.pinimg.com/originals/93/ae/64/93ae64ffec5d9ab21184e8f70a5d06b0.jpg',
//                   name: "Jasmin Noir",
//                   price: "\$20"),
//
//               _perfumeItem(
//                   image:
//                       'https://images.unsplash.com/photo-1610245169254-1cfd8bd165bf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHBlcmZ1bWUlMjBtZW58ZW58MHx8MHx8&w=1000&q=80',
//                   name: "Bvlgari Ae Gemme",
//                   price: "\$14"),
//
//               _perfumeItem(
//                   image:
//                   'https://images.unsplash.com/photo-1610461888750-10bfc601b874?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHBlcmZ1bWV8ZW58MHx8MHx8&w=1000&q=80',
//                   name: "Prada",
//                   price: "\$12"),
//
//               _perfumeItem(
//                   image:
//                   'https://i.pinimg.com/originals/08/5c/2d/085c2db1ab4543b65a10adfcfbeedf43.jpg',
//                   name: "Premifrf Luxe",
//                   price: "\$11"),
//
//               _perfumeItem(
//                   image:
//                   'https://fimgs.net/himg/o.ayvEnchnz9o.jpg',
//                   name: "nuts&fut",
//                   price: "\$13"),
//
//               _perfumeItem(
//                   image:
//                   'https://images.squarespace-cdn.com/content/v1/59da11e98419c28f51bab499/1568345122515-5Z847U4A0FUP6WMBHPPU/FortManle-1220_0101.jpg',
//                   name: "Aventus",
//                   price: "\$13"),
//
//               _perfumeItem(
//                   image:
//                   'https://4.img-dpreview.com/files/p/TS560x560~forums/61889506/bf61733c362c47cda582038cb220cee9',
//                   name: "Meraki",
//                   price: "\$15"),
//
//               _perfumeItem(
//                   image:
//                   'https://www.harrods.com/BWStaticContent/50000/bd14d78c-e8b0-43d7-8965-2a4bf102c5c3_m-hero-t2-creed-04-11-21.jpg',
//                   name: "Oreed",
//                   price: "\$10"),
//
//             ],
//           ),
//         ));
//   }
//
//   Widget _perfumeItem({
//     String? image,
//     String? name,
//     String? price,
//   }) =>
//       Card(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(15)),
//         ),
//         color: Colors.black12,
//         child: Container(
//           height: 210,
//           width: 210,
//
//           // color: Colors.pink,
//           child: Column(
//             children: [
//               ClipRRect(
//                   borderRadius: BorderRadius.circular(15),
//                   child: Image.network(
//                     image!,
//                     height: 210,
//                     fit: BoxFit.cover,
//                     width: 300,
//                   )),
//               SizedBox(
//                 height: 4,
//               ),
//               Text(
//                 name!,
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 price!,
//                 style: TextStyle(fontSize: 16),
//               ),
//             ],
//           ),
//         ),
//       );
// }
