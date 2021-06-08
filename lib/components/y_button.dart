import 'package:flutter/material.dart';
import 'package:ynotes_components/constants.dart';

import 'package:sizer/sizer.dart';

class YButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;
  final YColor type;
  final YButtonVariant variant;
  final IconData? icon;
  final bool isLoading;
  final bool isDisabled;

  const YButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.type = YColor.primary,
      this.variant = YButtonVariant.plain,
      this.icon,
      this.isLoading = false,
      this.isDisabled = false})
      : super(key: key);
  @override
  _YButtonState createState() => _YButtonState();
}

enum YButtonVariant { plain, reverse }

class _YButtonState extends State<YButton> with TickerProviderStateMixin {
  final YUtils utils = new YUtils();

  @override
  Widget build(BuildContext context) {
    final double fontSize = 12;
    final String type = utils.enumToString(widget.type);
    final String variant = utils.enumToString(widget.variant);

    final Map c = {
      "plain": {
        "highlightColor": colors[type][600],
        "textColor": colors[type][50],
        "fillColor": colors[type][500]
      },
      "reverse": {
        "highlightColor": colors[type][200],
        "textColor": colors[type][600],
        "fillColor": colors[type][100]
      }
    };

    // Color highlightColor() => colors[type][600];
    // Color textColor() => colors[type][50];
    // Color fillColor() => colors[type][100];

    return Opacity(
      opacity: widget.isDisabled ? 0.5 : 1,
      child: RawMaterialButton(
          padding: EdgeInsets.symmetric(horizontal: 13.sp, vertical: 4.sp),
          elevation: 0,
          highlightElevation: 0,
          highlightColor: widget.isLoading || widget.isDisabled
              ? null
              : c[variant]["highlightColor"],
          onPressed:
              widget.isLoading || widget.isDisabled ? null : widget.onPressed,
          child: AnimatedSize(
            vsync: this,
            duration: Duration(milliseconds: 250),
            curve: Curves.easeInOut,
            child: widget.isLoading
                ? SizedBox(
                    width: fontSize + 4,
                    height: fontSize + 4,
                    child: CircularProgressIndicator(
                        strokeWidth: 3,
                        valueColor: AlwaysStoppedAnimation<Color>(
                            c[variant]["textColor"])),
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (widget.icon != null)
                        Icon(
                          widget.icon,
                          color: c[variant]["textColor"],
                          size: (fontSize + 4).sp,
                        ),
                      if (widget.icon != null)
                        SizedBox(
                          width: 10,
                        ),
                      Flexible(
                        child: Text(widget.text,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: c[variant]["textColor"],
                                fontWeight: FontWeight.w700,
                                fontSize: fontSize.sp)),
                      ),
                    ],
                  ),
          ),
          fillColor: c[variant]["fillColor"],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
    );
  }
}
