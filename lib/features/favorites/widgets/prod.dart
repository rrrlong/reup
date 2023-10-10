// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:reup/features/common/styles.dart';
// import 'dart:developer';

// class Prod extends StatefulWidget {
//   final ProductData data;
//   const Prod({super.key, required this.data});

//   @override
//   State<Prod> createState() => _ProdState();
// }

// class ProductData {
//   final Image img;
//   final String brand;
//   final String name;
//   final String price;

//   ProductData(this.img, this.brand, this.name, this.price);
// }

// class _ProdState extends State<Prod> {
//   @override
//   Widget build(BuildContext context) {
//     return FittedBox(
//       fit: BoxFit.fitWidth,
//       child: SizedBox(
//         width: MediaQuery.of(context).size.width / 2 - 16,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Stack(children: [
//               // изображение товара

//               Container(
//                   child: widget.data
//                       .img), //Image.asset('assets/images/reup_product.jpg')),
//               Align(
//                   alignment: Alignment.topRight,
//                   child: IconButton(
//                     onPressed: (() {
//                       log('fav');
//                     }),
//                     icon:
//                         SvgPicture.asset('assets/icons/reup_icon_favorite.svg'),
//                     iconSize: 16,
//                     style: IconButton.styleFrom(
//                       tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                     ),
//                   )),
//             ]),
//             const SizedBox(
//               height: 8,
//             ),
//             Text(
//               widget.data.brand,
//               style: CustomTextStyle.brandTextStyle,
//               maxLines: 1,
//             ),
//             const SizedBox(
//               height: 4,
//             ),
//             FittedBox(
//               fit: BoxFit.fitWidth,
//               child: Text(
//                 widget.data.name,
//                 style: CustomTextStyle.productTextStyle,
//                 maxLines: 1,
//               ),
//             ),
//             Container(
//               //width: 175,
//               decoration: const ShapeDecoration(
//                 shape: RoundedRectangleBorder(
//                   side: BorderSide(
//                     width: 0.50,
//                     //strokeAlign:
//                   ),
//                 ),
//               ),
//             ),
//             Row(
//               children: [
//                 Expanded(
//                   flex: 2,
//                   child: OutlinedButton(
//                     onPressed: null,
//                     style: OutlinedButton.styleFrom(
//                         //maximumSize: Size(102, 32),
//                         backgroundColor: Colors.white,
//                         side: const BorderSide(color: Colors.black, width: 0.5),
//                         tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                         shape: const RoundedRectangleBorder(
//                             borderRadius: BorderRadius.zero,
//                             side: BorderSide(color: Colors.black, width: 0.5))),
//                     child: const FittedBox(
//                       fit: BoxFit.fitWidth,
//                       child: Text('в корзину',
//                           maxLines: 1,
//                           style: CustomButtonTextStyle.buttonBoldStyle),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 8,
//                 ),
//                 Expanded(
//                   flex: 1,
//                   child: Text(
//                     widget.data.price,
//                     style: CustomTextStyle.boldTextStyle,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
