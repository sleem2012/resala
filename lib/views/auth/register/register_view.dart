import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:resala/shared/localization/trans.dart';
import 'package:resala/shared/theme/assets.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/text_field.dart';

import '../../../shared/theme/colors.dart';
import '../../widgets/custom_button.dart';

class RegisterLanding extends StatelessWidget {
  const RegisterLanding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          RegisterView(),
          AddProfilePicView(),
        ],
      ),
    );
  }
}

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Tr.get.create_account, style: KTextStyle.of(context).appBar),
        centerTitle: true,
        leading: RawMaterialButton(
          onPressed: () {},
          child: Icon(Icons.arrow_back_ios_new_rounded, color: KColors.of(context).icons),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding:  EdgeInsets.symmetric(horizontal: KHelper.hPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  KTextFormField(
                    hintText: Tr.get.full_name,
                  ),
                  const SizedBox(height: 8 ),
                  KTextFormField(
                    hintText: Tr.get.phone,
                  ),
                  const SizedBox(height: 8),
                  KTextFormField(
                    hintText: Tr.get.email,
                  ),
                  const SizedBox(height: 8),
                  KTextFormField(
                    hintText: Tr.get.password,
                  ),
                  const SizedBox(height: 8),
                  KTextFormField(
                    hintText: Tr.get.job_title,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(Tr.get.gender, style: KTextStyle.of(context).title),
                      Row(
                        children: [
                          Radio(
                            value: true,
                            groupValue: true,
                            onChanged: (value) {},
                          ),
                          Text(Tr.get.male, style: KTextStyle.of(context).title),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: true,
                            groupValue: false,
                            onChanged: (value) {},
                          ),
                          Text(Tr.get.female, style: KTextStyle.of(context).title),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                      ),
                      Text(Tr.get.by_creating_an_account, style: KTextStyle.of(context).body2)
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: KButton(
                      title: Tr.get.register,
                      onPressed: () {},
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      ///TODO
                      Get.to(() => const RegisterLanding());
                    },
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: Tr.get.already_have_an_account + ' ', style: KTextStyle.of(context).hint),
                          TextSpan(
                            text: Tr.get.login,
                            style: KTextStyle.of(context).body,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AddProfilePicView extends StatelessWidget {
  const AddProfilePicView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        SizedBox(width: width, height: height),
        SvgPicture.asset(KAssets.loginBack),
        Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding:  EdgeInsets.symmetric(horizontal: KHelper.hPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: height * .1),
                    SvgPicture.asset(KAssets.profilePic, height: width * .55),
                    SizedBox(height: height * .05),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        // Text(Tr.get.add_profile_picture, style: KTextStyle.of(context).reAppBar),
                        Icon(Icons.edit_note, color: Colors.white, size: 28)
                      ],
                    ),
                    SizedBox(height: height * .2),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: KButton(
                        title: Tr.get.next,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
