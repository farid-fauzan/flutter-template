import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kimo/constants.dart';
import 'package:kimo/screens/home/components/recomend_plats.dart';
import 'package:kimo/screens/home/components/title_with_more_button.dart';

import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      //it enable scrolling on small device
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(
            // press: (){},
            title: "Recomended", press: () {},
          ),
          RecomendPlants(),
          TitleWithMoreButton(title: "Featured Plants", press: () {}),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FeaturedPlantCard(
                  image: "assets/images/bottom_img_1.png",
                  press: () {},
                ),
                FeaturedPlantCard(
                  image: "assets/images/bottom_img_2.png",
                  press: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    Key? key,
    required this.image,
    required this.press,
    // required this.size,
  }) : super(key: key);

  final String image;
  final Function press;

  // final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press.call(),
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
            //"assets/images/bottom_img_1.png"
          ),
        ),
      ),
    );
  }
}

// class RecomendPlants extends StatelessWidget {
//   const RecomendPlants({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: <Widget>[
//           RecomendPlantCard(
//             image: "assets/images/image_1.png",
//             country: 'Russia',
//             press: () {},
//             price: 440,
//             title: 'Shamanta',
//           ),
//           RecomendPlantCard(
//             image: "assets/images/image_2.png",
//             country: 'Russia',
//             press: () {},
//             price: 440,
//             title: 'Angelica',
//           ),
//           RecomendPlantCard(
//             image: "assets/images/image_3.png",
//             country: 'Russia',
//             press: () {},
//             price: 440,
//             title: 'Shamanta',
//           ),
//         ],
//       ),
//     );
//   }
// }

// class RecomendPlantCard extends StatelessWidget {
//   const RecomendPlantCard({
//     Key? key,
//     required this.image,
//     required this.title,
//     required this.country,
//     required this.price,
//     required this.press,
//     // required this.size,
//   }) : super(key: key);

//   // final Size size;
//   final String image, title, country;
//   final int price;
//   final Function press;

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       margin: EdgeInsets.only(
//           left: kDefaultPadding,
//           top: kDefaultPadding / 2,
//           bottom: kDefaultPadding * 2.5),
//       width: size.width * 0.4,
//       child: Column(
//         children: <Widget>[
//           Image.asset(image),
//           GestureDetector(
//             onTap: press.call(),
//             child: Container(
//               padding: EdgeInsets.all(kDefaultPadding / 2),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(10),
//                   bottomRight: Radius.circular(10),
//                 ),
//                 boxShadow: [
//                   BoxShadow(
//                     offset: Offset(0, 1),
//                     blurRadius: 50,
//                     color: kPrimaryColor.withOpacity(0.23),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 children: <Widget>[
//                   RichText(
//                     text: TextSpan(
//                       children: [
//                         TextSpan(
//                           text: "$title\n".toUpperCase(),
//                           style: Theme.of(context).textTheme.button,
//                         ),
//                         TextSpan(
//                           text: "$country".toUpperCase(),
//                           style: TextStyle(
//                             color: kPrimaryColor.withOpacity(0.5),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Spacer(),
//                   Text(
//                     '\$$price',
//                     style: Theme.of(context)
//                         .textTheme
//                         .button
//                         ?.copyWith(color: kPrimaryColor),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class TitleWithMoreButton extends StatelessWidget {
//   const TitleWithMoreButton({
//     Key? key,
//     required this.title,
//     // required this.press,
//   }) : super(key: key);

//   final String title;
//   // final Function press;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
//       child: Row(
//         children: [
//           TitleWithCustomUnderline(text: title),
//           Spacer(),
//           FlatButton(
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//             color: kPrimaryColor,
//             onPressed: (){},
//             child: Text(
//               "More",
//               style: TextStyle(color: Colors.white),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class TitleWithCustomUnderline extends StatelessWidget {
//   const TitleWithCustomUnderline({
//     Key? key,
//     required this.text,
//   }) : super(key: key);

//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 24,
//       child: Stack(
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.only(left: kDefaultPadding / 4),
//             child: Text(
//               text,
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Positioned(
//               bottom: 0,
//               left: 0,
//               right: 0,
//               child: Container(
//                   margin: EdgeInsets.only(right: kDefaultPadding / 4),
//                   height: 7,
//                   color: kPrimaryColor.withOpacity(0.2)))
//         ],
//       ),
//     );
//   }
// }

// class HeaderWithSearchBox extends StatelessWidget {
//   const HeaderWithSearchBox({
//     Key? key,
//     required this.size,
//   }) : super(key: key);

//   final Size size;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
//       height: size.height * 0.2,
//       child: Stack(
//         children: <Widget>[
//           Container(
//             padding: EdgeInsets.only(
//               left: kDefaultPadding,
//               right: kDefaultPadding,
//               bottom: 36 + kDefaultPadding,
//             ),
//             height: size.height * 0.2 - 27,
//             decoration: BoxDecoration(
//               color: kPrimaryColor,
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(36),
//                 bottomRight: Radius.circular(36),
//               ),
//             ),
//             child: Row(
//               children: <Widget>[
//                 Text(
//                   'Hi Farid!',
//                   style: Theme.of(context).textTheme.headline5?.copyWith(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                 ),
//                 Spacer(),
//                 // Image.asset("/assets/images/logo.png"),
//                 // Image.asset('/assets/images/logo.png'),
//                 // Image.asset("/assets/images/logo.png"),
//                 // Image.asset("kimo/assets/images/logo.png")
//               ],
//             ),
//           ),
//           Positioned(
//             bottom: 0,
//             right: 0,
//             left: 0,
//             child: Container(
//               alignment: Alignment.center,
//               margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
//               padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
//               height: 54,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(30),
//                 boxShadow: [
//                   BoxShadow(
//                     offset: Offset(0, 10),
//                     blurRadius: 50,
//                     color: kPrimaryColor.withOpacity(0.23),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 children: <Widget>[
//                   Expanded(
//                     child: TextField(
//                       onChanged: (value) {},
//                       decoration: InputDecoration(
//                         hintText: "Search",
//                         hintStyle: TextStyle(
//                           color: kPrimaryColor.withOpacity(0.5),
//                         ),
//                         enabledBorder: InputBorder.none,
//                         focusedBorder: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                   SvgPicture.asset("assets/icons/search.svg"),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
