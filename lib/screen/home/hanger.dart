import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hangerstore_test/constants.dart';
import 'package:hangerstore_test/screen/home/components/body.dart';

class Hanger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              CircleAvatar(
                child: Image(image: AssetImage('assets/images/hanger.jpeg'),),
                backgroundColor: Colors.white,
                radius: 35,

              ),
              ListTile(
                leading: Icon(Icons.circle_outlined, color: Colors.black45),
                title: Text("About Us", style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),),
              ),
              ListTile(
                leading: Icon(Icons.shopping_bag_outlined, color: Colors.black45,),
                title: Text("My Orders", style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),),
              ),
              // Divider(),
              ExpansionTile(leading: Icon(Icons.settings_outlined,color: Colors.black45,),
                title:Text("Settings",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),),
                children: <Widget>[Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Icon(Icons.notifications_on_outlined),
                        Text("Notifications"),
                        Switch(value: false,
                          onChanged: Future.value,
                          activeColor: Colors.grey,
                          activeTrackColor: Colors.blueGrey,
                        ),
                      ],
                    ),
                    Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Icon(Icons.format_paint_outlined),
                        Text("Theme"),
                        Switch(value: false,
                          onChanged:Future.value,
                          activeColor: Colors.black,
                          activeTrackColor: Colors.black54,),
                      ],
                    )
                  ],
                )

                ],),
              ListTile(
                leading: Icon(Icons.logout_outlined, color: Colors.black45,),
                title: Text("Logout", style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),),
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:<Widget> [
            IconButton(icon: Icon(Icons.home_outlined, color: Colors.black87,), onPressed: () {},),
            IconButton(icon: Icon(Icons.favorite_border_rounded,color: Colors.redAccent,), onPressed: () {},),
            IconButton(icon: Icon(Icons.person_outline_rounded,color: Colors.black87 ), onPressed: () {},),
            IconButton(icon: Icon(Icons.shopping_cart_outlined, color: Colors.black87), onPressed: () {},),
          ],
        ),
      ),

    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black87),
      title: Image(
        image: AssetImage('assets/images/hsa1.png'),
      ),
      elevation: 0.0,
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
              color: kTextColor,
            )),

        SizedBox(width: kDefaultPadding / 2),
      ],
    );
  }
}
