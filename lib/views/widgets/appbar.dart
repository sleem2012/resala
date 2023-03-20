import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resala/shared/theme/helper.dart';
import '../../shared/theme/text_theme.dart';

class KAppBar extends StatelessWidget implements PreferredSizeWidget {
  const KAppBar({Key? key,  this.title=''}) : super(key: key);
final String title;
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'appBar',
      child: AppBar(
        title: Text(title,style: KTextStyle.of(context).title,),
        centerTitle: true,
        // titleTextStyle: KTextStyle.of(context).appBar,
        leading: Padding(
          padding:  EdgeInsets.only(right: KHelper.hPadding),
          child: SvgPicture.asset("assets/image/Resala Logo.svg",),
        ),
       leadingWidth: 100,
       elevation: .5,
      ),
    );
  }
}
