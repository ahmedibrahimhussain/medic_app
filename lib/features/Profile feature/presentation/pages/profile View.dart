import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/recourses/color manager/color manager.dart';
import '../../../../../core/recourses/font manager/font manager.dart';
import '../../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../../core/recourses/value manger/value manager.dart';
import '../../../../core/recourses/image manager/image manager.dart';
import '../../../../core/utils/custom navigation.dart';
import '../../../auth feature/presentation/pages/login page.dart';
import '../widgets/profile row.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                const SizedBox(
                  height: AppSize.s20,
                ),
                const CircleAvatar(
                  radius: 60,
                 backgroundImage: AssetImage(ImageManager.doctor1Image),
                ),
                const SizedBox(
                  height: AppSize.s8,
                ),
                Text(
                  "Karim Mohamed",
                  style: getBoldStyle(
                      color: ColorManager.black, fontSize: FontSizeManager.s24),
                ),
                Text(
                  "KarimMohamed203@gmail.com",
                  style: getMediumStyle(
                      color: ColorManager.grey, fontSize: FontSizeManager.s20),
                ),
                const SizedBox(
                  height: AppSize.s20,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: PaddingSize.p8,vertical: PaddingSize.p16,),
            decoration: const BoxDecoration(
              
              color: ColorManager.shadowColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(PaddingSize.p40),
                    topRight: Radius.circular(PaddingSize.p40),),),
            child: Column(
              children: [

                ProfileRow(
                  icon: Icons.edit,
                  text: 'Edite Profile',
                  onTap: () {},
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50, left: 50),
                  child: Container(
                    width: double.infinity,
                    height: 1,
                    color: ColorManager.grey,
                  ),
                ),
                ProfileRow(
                  icon: Icons.lock_outline_rounded,
                  text: 'Security and Privacy',
                  onTap: () {},
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50, left: 50),
                  child: Container(
                    width: double.infinity,
                    height: 1,
                    color: ColorManager.grey,
                  ),
                ),
                ProfileRow(
                  icon: Icons.help,
                  text: 'Help',
                  onTap: () {},
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50, left: 50),
                  child: Container(
                    width: double.infinity,
                    height: 1,
                    color: ColorManager.grey,
                  ),
                ),
                ProfileRow(
                  icon: Icons.settings_rounded,
                  text: 'Setting',
                  onTap: () {},
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50, left: 50),
                  child: Container(
                    width: double.infinity,
                    height: 1,
                    color: ColorManager.grey,
                  ),
                ),
                ProfileRow(
                  icon: Icons.logout,
                  text: 'Logout',
                  onTap: () {
                     CustomNavigation.authNavigation(const LoginPage());

                  },
                ),

              ],
            ),
          )
      ,  
       
        ],

      ),
    );
  }
}
