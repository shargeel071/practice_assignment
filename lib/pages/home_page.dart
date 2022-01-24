import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:softwarehub_practice/config/screen_config.dart';
import 'package:badges/badges.dart';
import 'package:softwarehub_practice/pages/profile_page.dart';
import 'package:softwarehub_practice/theme/my_flutter_app_icons.dart';
import 'package:softwarehub_practice/widgets/banner_widget.dart';
import 'package:softwarehub_practice/widgets/graph_widget.dart';
import 'package:softwarehub_practice/widgets/profile_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String _chosenCategory = 'Pakistan';

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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                },
                child: Container(
                  height: ScreenConfig.blockHeight*5,
                  width: ScreenConfig.blockWidth*95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.teal
                  ),
                  child: Center(child: Text('PROFILE', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
                ),
              ),
              ProfileWidget(),
              BannerWidget(),
              Container(
                height: ScreenConfig.blockHeight*5,
                width: ScreenConfig.blockWidth*95,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: ScreenConfig.blockHeight*5,
                      width: ScreenConfig.blockWidth*45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.teal
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.flag_outlined, color: Colors.white,size: 15,),
                                    SizedBox(height: 4,),
                                    Icon(Icons.flag_outlined, color: Colors.white,size: 15,),
                                  ],
                                ),
                                SizedBox(width: 5,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Nabeel', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 14),),
                                    SizedBox(height: 4,),
                                    Text('Age: 30 Y', style: TextStyle( color: Colors.white, fontSize: 12),)

                                  ],
                                ),
                              ],
                            ),
                            Icon(MyFlutterApp.male, color: Colors.white,)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: ScreenConfig.blockHeight*5,
                      width: ScreenConfig.blockWidth*12,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.teal
                      ),
                      child: Icon(MyFlutterApp.group_3521, color: Colors.white,size: 40,),
                    ),
                    Container(
                      height: ScreenConfig.blockHeight*5,
                      width: ScreenConfig.blockWidth*12,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.teal
                      ),
                      child: Icon(MyFlutterApp.chat, color: Colors.white,size: 40,),
                    ),
                    Container(
                      height: ScreenConfig.blockHeight*5,
                      width: ScreenConfig.blockWidth*12,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.teal
                      ),
                      child: Icon(MyFlutterApp.challenge, color: Colors.white,size: 40,),
                    ),
                  ],
                ),
              ),
              Container(
                height: ScreenConfig.blockHeight*5,
                width: ScreenConfig.blockWidth*95,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: ScreenConfig.blockHeight*5,
                      width: ScreenConfig.blockWidth*45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.teal
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                           Row(
                             children: [
                               Icon(Icons.alt_route_outlined, color: Colors.white,),
                               SizedBox(width: 5,),
                               Text('Ranking', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 13),),
                             ],
                           ),
                           Text('31,530', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),),

                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: ScreenConfig.blockHeight*5,
                      //width: ScreenConfig.blockWidth*13,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          //color: Colors.teal
                      ),
                      child: Icon(Icons.menu, color: Colors.black,size: 40,),
                    ),
                    Container(
                      height: ScreenConfig.blockHeight*5,
                      width: ScreenConfig.blockWidth*35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.black, width: 1)
                        //color: Colors.teal
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text('City:', style: TextStyle( fontWeight: FontWeight.w500, color: Colors.black, fontSize: 14),),
                          DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              dropdownColor: Colors.white,
                              value: _chosenCategory,
                              focusColor: Colors.black,

                              //elevation: 5,
                              style: TextStyle(color: Colors.black, ),

                              items: <String>[
                                'Pakistan',
                                'Dubai',
                                'Turkey',
                                'Spain',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                );
                              }).toList(),
                              hint: Center(
                                child: Text(
                                  "Category",
                                  style: TextStyle(
                                    color: Colors.black,
                                    // fontSize: 16,
                                    //    fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),
                              iconEnabledColor: Colors.black,
                              onChanged: (String? value) {
                                setState(() {
                                  _chosenCategory = value!;
                                  // category = _chosenCategory.toString();
                                  print('categor choosen : $_chosenCategory');
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: ScreenConfig.blockHeight*30,
                width: ScreenConfig.blockWidth*95,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('Avg. Step/H', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),),
                        Container(
                          height: ScreenConfig.blockHeight*14,
                          width: ScreenConfig.blockWidth*30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.teal,width: 8)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(MyFlutterApp.group_2576, size: 25,),
                              Text('20K', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),),
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('Last Challenges', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),),
                        Container(
                          height: ScreenConfig.blockHeight*14,
                          width: ScreenConfig.blockWidth*30,
                          // decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(100),
                          //     border: Border.all(color: Colors.teal,width: 8)
                          // ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(MyFlutterApp.group_8681, size: 30,color: Colors.teal,),
                              Icon(MyFlutterApp.group_8682, size: 30,color: Colors.purple,),
                              Icon(MyFlutterApp.group_8682, size: 30,color: Colors.purple,),
                            ],
                          ),
                        )
                      ],
                    )
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
