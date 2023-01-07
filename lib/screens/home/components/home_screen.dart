import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kimo/constants.dart';
import 'package:kimo/screens/home/components/body.dart';
import 'my_bottom_navbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}

// class MyBottomNavBar extends StatelessWidget {
//   const MyBottomNavBar({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(
//         left: kDefaultPadding * 2,
//         right: kDefaultPadding * 2,
//         bottom: kDefaultPadding,
//       ),
//       height: 80,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             offset: Offset(0, -10),
//             blurRadius: 35,
//             color: kPrimaryColor.withOpacity(0.38),
//           ),
//         ],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: <Widget>[
//           IconButton(
//             icon: SvgPicture.asset("assets/icons/flower.svg"),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: SvgPicture.asset("assets/icons/user-icon.svg"),
//             onPressed: () {},
//           ),
//         ],
//       ),
//     );
//   }
// }
