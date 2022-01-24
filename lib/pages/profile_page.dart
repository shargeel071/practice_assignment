import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:softwarehub_practice/config/screen_config.dart';
import 'package:softwarehub_practice/theme/my_flutter_app_icons.dart';
import 'package:softwarehub_practice/widgets/banner_widget.dart';
import 'package:softwarehub_practice/widgets/graph_widget.dart';
import 'package:softwarehub_practice/widgets/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu, color: Colors.black54,)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Row(
              children: [
                Badge(
                  badgeContent: Text('0', style: TextStyle(color: Colors.white),),
                  child: Icon(Icons.add_shopping_cart,color: Colors.black54),
                ),
                SizedBox(width: 15,),
                Badge(
                  badgeContent: Text('0', style: TextStyle(color: Colors.white),),
                  child: Icon(Icons.mail_outline,color: Colors.black54),
                ),

                SizedBox(width: 15,),
                Badge(
                  badgeContent: Text('0', style: TextStyle(color: Colors.white),),
                  child:  Icon(Icons.notifications_none,color: Colors.black54),
                ),

              ],
            ),
          ),
        ],
      ),
      body: Container(
        height: ScreenConfig.screenHeight,
        width: ScreenConfig.screenWidth,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
             ProfileWidget(),
              Column(
                children: [
                  Container(
                    height: ScreenConfig.blockHeight*3,
                    width: ScreenConfig.blockWidth*28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8)
                      ),
                      color: Colors.black54
                    ),
                    child: Center(child: Text('7,201/10,000', style: TextStyle(color: Colors.white),)),
                  ),
                  Container(
                    height: ScreenConfig.blockHeight*3,
                    width: ScreenConfig.blockWidth*95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.teal,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('LEV. 5', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white, fontSize: 12),),
                        Stack(
                          children: [
                            Container(
                              height: ScreenConfig.blockHeight*1,
                              width: ScreenConfig.blockWidth*50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              height: ScreenConfig.blockHeight*1,
                              width: ScreenConfig.blockWidth*20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        Text('EARN 500 ', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white, fontSize: 12),),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  BannerWidget(),
                  SizedBox(height: 10,),
                  Container(
                    height: ScreenConfig.blockHeight*3,
                    width: ScreenConfig.blockWidth*95,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: <Widget>[
                        Container(
                          height: ScreenConfig.blockHeight*3,
                          width: ScreenConfig.blockWidth*31,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                            ),
                            color: Colors.black54
                          ),
                          child:  Center(child: Text('Day', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white, fontSize: 14),)),
                        ),
                        Container(
                          height: ScreenConfig.blockHeight*3,
                          width: ScreenConfig.blockWidth*31,
                          decoration: BoxDecoration(

                              color: Colors.teal
                          ),
                          child:  Center(child: Text('Week', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white, fontSize: 14),)),
                        ),
                        Container(
                          height: ScreenConfig.blockHeight*3,
                          width: ScreenConfig.blockWidth*31,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              color: Colors.black54
                          ),
                          child:  Center(child: Text('Month', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white, fontSize: 14),)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: ScreenConfig.blockHeight*16,
                width: ScreenConfig.blockWidth*34,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.teal,width: 8)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(MyFlutterApp.group_2576, size: 25,),
                    Text('3,8K', style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),),
                    Text('Steps', style: TextStyle(color: Colors.black, ),),
                  ],
                ),
              ),
              Container(
               // height: ScreenConfig.blockHeight*3,
                width: ScreenConfig.blockWidth*95,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.teal, width: 2),
                            //color: Colors.teal
                          ),
                          child: Icon(Icons.location_on_outlined),
                        ),
                        Text('Distance', style: TextStyle(color: Colors.black, fontSize: 10 ),),
                        Text('4.6', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold ),),
                        Text('KM', style: TextStyle(color: Colors.black, fontSize: 10 ),),

                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.teal, width: 2),
                            //color: Colors.teal
                          ),
                          child: Icon(Icons.color_lens_outlined),
                        ),
                        Text('Speed', style: TextStyle(color: Colors.black, fontSize: 10 ),),
                        Text('2.67', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold ),),
                        Text('KM/H', style: TextStyle(color: Colors.black, fontSize: 10 ),),

                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.teal, width: 2),
                            //color: Colors.teal
                          ),
                          child: Icon(Icons.lock_clock_outlined),
                        ),
                        Text('Minute', style: TextStyle(color: Colors.black, fontSize: 10 ),),
                        Text('46', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold ),),
                        Text('Min', style: TextStyle(color: Colors.black, fontSize: 10 ),),

                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: ScreenConfig.blockHeight*15,
                width: ScreenConfig.blockWidth*95,
               // color: Colors.teal,
                child: GraphWidget(),
              )

            ],
          ),
        ),
      ),
    );
  }
}
