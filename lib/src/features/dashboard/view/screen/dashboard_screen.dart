import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:go_router/go_router.dart';
import 'package:nobook/src/app/navigation/app_routes.dart';
import 'package:nobook/src/app/themes/colors.dart';
import 'package:nobook/src/utils/constants/assets.dart';
import 'package:nobook/src/utils/extensions/size_extension.dart';
import 'package:nobook/src/utils/sizing/sizing.dart';
import 'package:nobook/src/utils/widgets/text/app_text.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(backgroundColor: AppColors.white,
    body: Column(children: [
      YMargin(40),
      AppText.medium('NNKKK',),
      Container(color: Colors.yellow,
      height: context.height * 0.1,width: context.height* 0.1,),
      YMargin(40),
    SizedBox(height: 40,),
SvgPicture.asset(Assets.logo),
    ElevatedButton(onPressed: (){context.goNamed(AppRoutes.note);}, child: AppText.bold('nnn'))
      
   ]),);
  }
}  