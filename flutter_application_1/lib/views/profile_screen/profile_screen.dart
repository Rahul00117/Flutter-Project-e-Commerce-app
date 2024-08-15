import 'package:project_1/consts/consts.dart';
import 'package:project_1/consts/list.dart';
import 'package:project_1/views/profile_screen/components/details_cart.dart';
import 'package:project_1/views/widgets_common/bg_wegets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
            body: SafeArea(
                child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
              alignment: Alignment.topRight,
              child: const Icon(
                Icons.edit,
                color: whiteColor,
              )).onTap(() {}),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Image.asset(
                imgProfile2,
                width: 100,
                fit: BoxFit.cover,
              ).box.roundedFull.clip(Clip.antiAlias).make(),
              10.widthBox,
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "Dummy User".text.fontFamily(semibold).white.make(),
                  "customer@example.com".text.white.make()
                ],
              )),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(
                    color: whiteColor,
                  )),
                  onPressed: () {},
                  child: logout.text.fontFamily(semibold).white.make())
            ],
          ),
        ),
        20.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            detailsCard(
                count: "00",
                title: "in your cart",
                width: context.screenWidth / 3.4),
            detailsCard(
                count: "32",
                title: "in your wishlist",
                width: context.screenWidth / 3.4),
            detailsCard(
                count: "675",
                title: "your orders",
                width: context.screenWidth / 3.4)
          ],
        ),
        ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return Divider(
                    color: lightGrey,
                  );
                },
                itemCount: profileButtonsList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Image.asset(
                      profileButtonsIcon[index],
                      width: 22,
                    ),
                    title: profileButtonsList[index]
                        .text
                        .fontFamily(bold)
                        .color(darkFontGrey)
                        .make(),
                  );
                })
            .box
            .white
            .rounded
            .margin(const EdgeInsets.all(12))
            .padding(const EdgeInsets.symmetric(horizontal: 16))
            .shadowSm
            .make()
            .box
            .color(redColor)
            .make(),
      ],
    ))));
  }
}
