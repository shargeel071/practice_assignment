import 'package:flutter/cupertino.dart';
import 'package:softwarehub_practice/config/screen_config.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    return  Container(
      height: ScreenConfig.blockHeight*8,
      width: ScreenConfig.blockWidth*95,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          //color: Colors.teal
          image: DecorationImage(
              image: AssetImage('assets/images/wego.jpg'),
              fit: BoxFit.cover
          )
      ),
    );
  }
}
