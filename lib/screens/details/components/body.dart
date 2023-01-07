import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kimo/constants.dart';
import 'package:kimo/screens/details/components/icon_card.dart';
import 'package:kimo/screens/details/components/title_and_price.dart';
import 'button_selection.dart';
import 'image_and_icon.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcon(size: size),
          TitleAndPrice(
            country: 'Russia',
            price: 440,
            title: 'Angelica',
          ),
          SizedBox(height: kDefaultPadding),
          ButtonSelection(size: size),
        ],
      ),
    );
  }
}

// class ButtonSelection extends StatelessWidget {
//   const ButtonSelection({
//     Key? key,
//     required this.size,
//   }) : super(key: key);

//   final Size size;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         SizedBox(
//           width: size.width / 2,
//           height: 84,
//           child: FlatButton(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.only(
//                 topRight: Radius.circular(20),
//               ),
//             ),
//             color: kPrimaryColor,
//             onPressed: () {},
//             child: Text(
//               "Buy Now",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 16,
//               ),
//             ),
//           ),
//         ),
//         Expanded(
//           child: FlatButton(
//             child: Text(
//               "Description",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 16,
//               ),
//             ),
//             onPressed: () {},
//           ),
//         ),
//       ],
//     );
//   }
// }

// class TitleAndPrice extends StatelessWidget {
//   const TitleAndPrice({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
//       child: Row(
//         children: <Widget>[
//           RichText(
//             text: TextSpan(
//               children: [
//                 TextSpan(
//                   text: "Angelica\n",
//                   style: Theme.of(context).textTheme.headline4?.copyWith(
//                       color: kTextColor, fontWeight: FontWeight.bold),
//                 ),
//                 TextSpan(
//                   text: "russia",
//                   style: TextStyle(
//                     fontSize: 20,
//                     color: kPrimaryColor,
//                     fontWeight: FontWeight.w300,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Spacer(),
//           Text(
//             "\$440",
//             style: Theme.of(context)
//                 .textTheme
//                 .headline5
//                 ?.copyWith(color: kPrimaryColor),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ImageAndIcon extends StatelessWidget {
//   const ImageAndIcon({
//     Key? key,
//     required this.size,
//   }) : super(key: key);

//   final Size size;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
//       child: SizedBox(
//         height: size.height * 0.8,
//         child: Row(
//           children: [
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(
//                     vertical: kDefaultPadding * 3),
//                 child: Column(
//                   children: <Widget>[
//                     Align(
//                       alignment: Alignment.topLeft,
//                       child: IconButton(
//                         padding: EdgeInsets.symmetric(
//                             horizontal: kDefaultPadding),
//                         onPressed: () {
//                           Navigator.pop(context);
//                         },
//                         icon: SvgPicture.asset(
//                             "assets/icons/back_arrow.svg"),
//                       ),
//                     ),
//                     Spacer(),
//                     IconCard(icon: "assets/icons/sun.svg"),
//                     IconCard(icon: "assets/icons/icon_2.svg"),
//                     IconCard(icon: "assets/icons/icon_3.svg"),
//                     IconCard(icon: "assets/icons/icon_4.svg"),
//                   ],
//                 ),
//               ),
//             ),
//             Container(
//               height: size.height * 0.8,
//               width: size.width * 0.75,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(63),
//                   bottomLeft: Radius.circular(63),
//                 ),
//                 boxShadow: [
//                   BoxShadow(
//                     offset: Offset(0, 10),
//                     blurRadius: 60,
//                     color: kPrimaryColor.withOpacity(0.29),
//                   ),
//                 ],
//                 image: DecorationImage(
//                   alignment: Alignment.center,
//                   fit: BoxFit.cover,
//                   image: AssetImage("assets/images/img.png"),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class IconCard extends StatelessWidget {
//   const IconCard({
//     Key? key,
//     required this.icon,
//   }) : super(key: key);

//   final String icon;

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
//       padding: EdgeInsets.all(kDefaultPadding / 2),
//       height: 60,
//       width: 60,
//       decoration: BoxDecoration(
//         color: kBackgorundColor,
//         borderRadius: BorderRadius.circular(6),
//         boxShadow: [
//           BoxShadow(
//             offset: Offset(0, 15),
//             blurRadius: 22,
//             color: kPrimaryColor.withOpacity(0.22),
//           ),
//           BoxShadow(
//             offset: Offset(-15, -15),
//             blurRadius: 20,
//             color: Colors.white,
//           ),
//         ],
//       ),
//       child: SvgPicture.asset(icon),
//     );
//   }
// }
