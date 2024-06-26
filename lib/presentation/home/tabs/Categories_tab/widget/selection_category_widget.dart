import 'package:ecommerce/domain/entites/CategoryEntity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
typedef onSelectedCategory=void Function();
class SelectionCategoryWidget extends StatelessWidget {
  CategoryEntity category;
  bool isSelected;
  onSelectedCategory onSelected;
SelectionCategoryWidget({required this.onSelected,required this.category,this.isSelected=false,super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onSelected();
      },
      child: Container(
        height: 72.h,
        padding: REdgeInsets.all(5),
        decoration: BoxDecoration(
          color: isSelected?Colors.white:Colors.transparent
        ),
        child: Row(children: [
          Visibility(
            visible: isSelected,
            child: Container(width: 7.w,
              height: 72.h,
              decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(20.r),

            )
              ,),
          ),
          SizedBox(width: 5.w,),
          Expanded(
            child: Text(category.name??'',style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 14.sp
            ),),
          )
        ],),
      ),
    );
  }
}
