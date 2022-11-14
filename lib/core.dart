// ignore_for_file: non_constant_identifier_names, unused_element, must_be_immutable

import 'package:flutter/material.dart';

class Structure extends StatelessWidget {
  final Color? backgroundColor;
  final Color? bodyBackgroundColor;
  final Color? rightBarBackgroundColor;
  final Color? appBarBackgroundColor;
  final Color? leftBarBackgroundColor;
  final Widget? appBar;
  final Widget? leftBar;
  final Widget? rightBar;
  final Widget? body;
  final bool? expandLeftBar;
  const Structure(
      {this.backgroundColor,
      this.body,
      this.leftBar,
      this.expandLeftBar,
      this.rightBar,
      this.appBar,
      this.bodyBackgroundColor,
      this.leftBarBackgroundColor,
      this.rightBarBackgroundColor,
      this.appBarBackgroundColor,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool left = leftBar == null ? false : true;
    bool right = rightBar == null ? false : true;
    bool top = appBar == null ? false : true;
    var Size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: Size.height,
        width: Size.width,
        color: backgroundColor ?? Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _LeftBar(
              color: leftBarBackgroundColor,
              expanded: expandLeftBar == null ? true : expandLeftBar!,
              child: leftBar,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _AppBar(
                  expanded: expandLeftBar == null ? true : expandLeftBar!,
                  color: appBarBackgroundColor,
                  child: appBar,
                ),
                _Body(
                  expanded: expandLeftBar == null ? true : expandLeftBar!,
                  color: bodyBackgroundColor,
                  top: top,
                  left: left,
                  right: right,
                  child: body,
                ),
              ],
            ),
            _RightBar(
              color: rightBarBackgroundColor,
              child: rightBar,
            )
          ],
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  final Color? color;
  final Widget? child;
  bool expanded;
  _AppBar({this.color, this.child, this.expanded = true, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: color ?? Colors.white,
          border: Border.all(
            width: 0,
            color: color ?? Colors.white,
          )),
      height: Size.height * 0.1,
      width: expanded
          ? (Size.width * 0.6)
          : (Size.width * 0.6) + (Size.width * 0.15),
      child: child,
    );
  }
}

class _Body extends StatelessWidget {
  final Color? color;
  final Widget? child;
  bool? left;
  bool? right;
  bool? top;
  bool expanded;
  _Body({this.color, this.child, this.expanded = true, this.left, this.right, this.top, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: color ?? Colors.white,
          border: Border.all(
            width: 0,
            color: color ?? Colors.white,
          )),
      height: Size.height * 0.9,
      width: (expanded
          ? (Size.width * 0.6)
          : (Size.width * 0.6) + (Size.width * 0.15)),
      child: child,
    );
  }
}

class _LeftBar extends StatelessWidget {
  final Color? color;
  final Widget? child;
  bool expanded;
  _LeftBar({this.color, this.child, this.expanded = true, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: color ?? Colors.red,
          border: Border.all(
            width: 0,
            color: color ?? Colors.white,
          )),
      height: Size.height,
      width: child == null
          ? Size.width * 0
          : (expanded ? Size.width * 0.2 : Size.width * 0.05),
      child: child,
    );
  }
}

class _RightBar extends StatelessWidget {
  final Color? color;
  final Widget? child;
  const _RightBar({this.color, this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: color ?? Colors.white,
          border: Border.all(
            width: 0,
            color: color ?? Colors.white,
          )),
      height: Size.height,
      width: child == null ? Size.width * 0 : Size.width * 0.2,
      child: child,
    );
  }
}
