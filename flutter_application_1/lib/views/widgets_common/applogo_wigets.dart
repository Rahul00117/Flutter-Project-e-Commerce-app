import 'package:project_1/consts/consts.dart';

Widget applogoWiget() {
  //using velocity Xhear
  return Image.asset(icAppLogo)
      .box
      .white
      .size(77, 77)
      .padding(EdgeInsets.all(8))
      .rounded
      .make();
}
