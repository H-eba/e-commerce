import 'package:ecommerce/core/utils/assets_manager.dart';
import 'package:ecommerce/presentation/home/tabs/Categories_tab/categories_tab.dart';
import 'package:ecommerce/presentation/home/tabs/home_tab/home_tab.dart';
import 'package:ecommerce/presentation/home/tabs/home_view_model.dart';
import 'package:ecommerce/presentation/home/tabs/profile_tab/profilr_tab.dart';
import 'package:ecommerce/presentation/home/tabs/whish_list_tab/wish_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static List<Widget>tabs=[
    HomeTab(),
    CategoriesTab(),
    WishList(),
    ProfileTab()
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>HomeViewModel(),
      child: BlocBuilder<HomeViewModel,HomeStates>(
        builder: (context,state){
          HomeViewModel homeViewModel=HomeViewModel.get(context);
          return Scaffold(
            appBar: AppBar(
              title: SvgPicture.asset(
                AssetsManager.logo,
                height: 22.h,
                width: 66.w,
              ),
              actions: [
                IconButton(onPressed: () {

                }, icon: SvgPicture.asset(
            AssetsManager.cartIcon,
            height: 22.h,
            width: 66.w,),)
              ],
            ),
            bottomNavigationBar: ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: BottomNavigationBar(
                showUnselectedLabels: false,
                showSelectedLabels: false,
                currentIndex:homeViewModel.currentTabIndex ,
               // type: BottomNavigationBarType.fixed,
                onTap: (newIndex){
                  homeViewModel.changeTabIndex(newIndex);
                },
                items: [
                  BottomNavigationBarItem(
                      backgroundColor: Theme.of(context).colorScheme.primary,
      
                      icon: SvgPicture.asset(AssetsManager.homeUnSelected,
                        width:40.w,
                        height: 40.h,),
                      activeIcon: SvgPicture.asset(AssetsManager.homeSelected,
                        width:40.w,
                        height: 40.h,),
                      label: ''
                  ),
                  BottomNavigationBarItem(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      icon: SvgPicture.asset(AssetsManager.categoriesUnSelected,
                        width:40.w,
                        height: 40.h,),
                      activeIcon: SvgPicture.asset(AssetsManager.categoriesSelected,
                        width:40.w,
                        height: 40.h,),
                      label: ''
                  ),
                  BottomNavigationBarItem(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      icon: SvgPicture.asset(AssetsManager.whishUnSelected,
                        width:40.w,
                        height: 40.h,),
                      activeIcon: SvgPicture.asset(AssetsManager.whishSelected,
                        width:40.w,
                        height: 40.h,),
                      label: ''
                  ),
                  BottomNavigationBarItem(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      icon: SvgPicture.asset(AssetsManager.profileUnSelected,
                        width:40.w,
                        height: 40.h,),
                      activeIcon: SvgPicture.asset(AssetsManager.profileSelected,
                        width:40.w,
                        height: 40.h,),
                      label: ''
                  ),
      
      
                ],
              ),
            ),
            body: tabs[homeViewModel.currentTabIndex],
          );
        },
      
      ),
    );
  }
}
