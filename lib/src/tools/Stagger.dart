
import 'package:flutter/material.dart';


class StaggerAnimation extends StatelessWidget {
  StaggerAnimation({this.controller}) :

        opacity = Tween<double>(
            begin: 0.0 , end:  1.0
        ).animate(new CurvedAnimation(parent: controller, curve: Interval(0.0,0.100,curve : Curves.ease))),

        width = Tween<double>(
            begin: 50.0 , end:  150.0
        ).animate(new CurvedAnimation(parent: controller, curve: Interval(0.125,0.250,curve : Curves.ease))),

        height = Tween<double>(
            begin: 50.0 , end:  150.0
        ).animate(new CurvedAnimation(parent: controller, curve: Interval(0.250,0.375,curve : Curves.ease))),

        padding = EdgeInsetsTween(
            begin: EdgeInsets.only(bottom: 16) , end:  EdgeInsets.only(bottom : 75)
        ).animate(new CurvedAnimation(parent: controller, curve: Interval(0.250,0.375,curve : Curves.ease))),

        borderRadius = BorderRadiusTween(
          begin : BorderRadius.circular(4) , end : BorderRadius.circular(75)  ,
        ).animate(new CurvedAnimation(parent: controller, curve: Interval(0.375,0.500,curve : Curves.ease))),

        color = ColorTween(
          begin : Colors.indigoAccent[100] , end : Colors.orange[400],
        ).animate(new CurvedAnimation(parent: controller, curve: Interval(0.500,0.750,curve : Curves.ease))),

        super();

  final Animation<double> controller ;
  final Animation<double> opacity;
  final Animation<double> width;
  final Animation<double> height;
  final Animation<EdgeInsets> padding;
  final Animation<BorderRadius> borderRadius;
  final Animation<Color> color;


  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: buildAnimation,
      animation: controller,


    );
  }

  Widget buildAnimation(BuildContext context ,  Widget child ){
    return new Container(
      alignment : Alignment.bottomCenter,
      padding: padding.value,
      decoration: BoxDecoration(
        borderRadius: borderRadius.value,
        color: color.value,

      ),
      child: new Opacity(
        opacity: 1,
        child: Container(
          width: width.value,
          height: height.value,
          decoration: BoxDecoration(
              color: color.value,
              borderRadius: borderRadius.value
          ),

        ),
      ),
    );

  }
}