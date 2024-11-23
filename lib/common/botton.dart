import 'package:flutter/material.dart';
import 'package:libararybd/util/dimensions.dart';
import 'package:libararybd/util/styles.dart';



class CustomBottom extends StatelessWidget {
  final Color? bottomColor;
  final Color? textColor;
  final double? radius;
  final Widget? widget;
  final String name;
  final Function()?onTap;

  const CustomBottom({super.key,this.bottomColor, this.widget,this.radius, this.onTap, required this.name, this.textColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: onTap,
      child: Container(
        height:Dimensions.fifty,
        width: double.infinity,
        decoration: BoxDecoration(
            color:  bottomColor,

            borderRadius: BorderRadius.circular(Dimensions.fifty),
            border: Border.all(width: 1.5,color: Theme.of(context).hoverColor)
        ),

        child: Center(child: Text(name,style:textMedium.copyWith(fontSize: Dimensions.fontSizeLarge,color: Theme.of(context).cardColor)),),
      ),
    );
  }
}




class CustomCircular extends StatelessWidget {
  final Color? color;
  final double? height;
  final double? width;
  final double radius;
  final Color outlineColor;
  final Widget? widget;
  final Color? bottomColor;

  const CustomCircular({super.key,this.color,required this.outlineColor,this.height,this.width,this.widget, required this.radius, this.bottomColor, });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.fortyFive,
      //width:width,
      decoration: BoxDecoration(
          border: Border.all(  color: outlineColor,),
          color: bottomColor,
          borderRadius: BorderRadius.circular(radius)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimensions.twenty),
        child: widget,
      ),
    );
  }
}




class CustomOutlineCircular extends StatelessWidget {
  final Color? bottomColor;
  final Color? outlineColor;
  final double? height;
  final double? width;

  final Widget? widget;

  const CustomOutlineCircular({super.key,this.bottomColor,this.height,this.width,this.widget,this.outlineColor });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width:width,
      decoration: BoxDecoration(
          border: Border.all(  color:Theme.of(context).hintColor ,),
          color: Colors.white,
          borderRadius: BorderRadius.circular(50)),
      child:  Center(child: Padding(
          padding: const EdgeInsets.symmetric(vertical: Dimensions.paddingSizeExtraSmall,horizontal: Dimensions.defaultSize),
          child: widget
      )),
    );
  }
}




// Custom small button

class CustomSmallBottom extends StatelessWidget {
  final Widget widget;
  final Color color;
  final Function()?onTap;
  const CustomSmallBottom({super.key,required this.widget,required this.color,this.onTap});

  @override
  Widget build(BuildContext context) {
    return    InkWell(
      onTap: onTap,
      child: Container(height:Dimensions.fortyFive,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.fifty),color: color),
        child:  Center(child:widget,

        ),
      ),
    );

  }
}


//Previous or skip bottom

class PreviousSkipBottom extends StatelessWidget {
  final String text;
  const PreviousSkipBottom({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      //  onTap: (){Get.toNamed(RouteHelper.forearmWarrior);},
      child: Container(height:Dimensions.fortyFive, width: Dimensions.hundredEighty,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.fifty),
            color: Theme.of(context).disabledColor),child:  Center(child:
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.skip_previous_rounded,color: Theme.of(context).primaryColor,),
            Text("  Previous",style:textMedium.copyWith(color:Theme.of(context).primaryColor),),], ),),),
    );

  }
}


class CustomOutLineBottom extends StatelessWidget {
  final String bottomText ;
  final Color ?bottomColor ;
  final Color? outsideColor ;
  final Color ?textColor ;
  final String bottomImage;
  const CustomOutLineBottom({super.key,required this.bottomText, this.bottomColor, this.textColor,this.outsideColor,required this.bottomImage});

  @override
  Widget build(BuildContext context) {
    return Container(height: Dimensions.fifty,width: double.maxFinite,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.fifty),
        color:  bottomColor,border: Border.all(color: Theme.of(context).colorScheme.tertiary), ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,children: [
        Image(image: AssetImage(bottomImage),height: 25,fit: BoxFit.cover,),
        const SizedBox(width: Dimensions.twenty),
        Text(bottomText,style: textMedium.copyWith(fontSize: Dimensions.fontSizeLarge,),)
      ],
      ),
    );
  }
}
