import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:softwarehub_practice/config/screen_config.dart';
import 'package:softwarehub_practice/theme/my_flutter_app_icons.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    return Container(
      height: ScreenConfig.blockHeight*12,
      width: ScreenConfig.blockWidth*95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.teal, width: 1),
        //color: Colors.teal
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Badge(
            //alignment: Alignment.bottomRight,
            //showBadge: true,
            position: BadgePosition.topStart(top: 0, start: 0),
            // padding: EdgeInsets.all(6),
            badgeColor: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                height: ScreenConfig.blockHeight*10,
                width: ScreenConfig.blockWidth*20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.teal, width: 1),
                    image: DecorationImage(
                        image: AssetImage('assets/images/profile.jpg'),
                        fit: BoxFit.fill
                    )
                  //color: Colors.teal
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: ScreenConfig.blockWidth*70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.teal, width: 1),
                            //color: Colors.teal
                          ),
                          child: Icon(MyFlutterApp.group_3521),
                        ),
                        SizedBox(width: 5,),
                        Text('1455', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.teal, width: 1),
                            //color: Colors.teal
                          ),
                          child: Icon(MyFlutterApp.group_3521),
                        ),
                        SizedBox(width: 5,),
                        Text('LEV.5', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.teal, width: 1),
                            //color: Colors.teal
                          ),
                          child: Icon(MyFlutterApp.group_2576),
                        ),
                        SizedBox(width: 5,),
                        Text('20K', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: ScreenConfig.blockWidth*70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.teal, width: 1),
                            //color: Colors.teal
                          ),
                          child: Icon(MyFlutterApp.group_8681),
                        ),
                        SizedBox(width: 5,),
                        Text('22', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),),
                        SizedBox(width: 5,),
                        Text('Won', style: TextStyle(color: Colors.black,  fontSize: 12),),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.teal, width: 1),
                            //color: Colors.teal
                          ),
                          child: Icon(MyFlutterApp.group_8682),
                        ),
                        SizedBox(width: 5,),
                        Text('9', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),),
                        SizedBox(width: 5,),
                        Text('Loses', style: TextStyle(color: Colors.black,  fontSize: 12),),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.teal, width: 1),
                            //color: Colors.teal
                          ),
                          child: Icon(MyFlutterApp.group_3521),
                        ),
                        SizedBox(width: 5,),
                        Text('20K', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
