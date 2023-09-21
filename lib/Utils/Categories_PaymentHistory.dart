import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesWidget extends StatefulWidget {
  final String icon;
  final String text;
  final bool isSelected;

  CategoriesWidget(this.icon, this.text, this.isSelected);

  @override
  _CategoriesWidgetState createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  Color backgroundColor=Colors.white;

  @override
  void initState() {
    super.initState();
    backgroundColor =
    widget.isSelected ? Colors.white : Color(0xff132183);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: InkWell(
          onTap: () {
            // Toggle the background color when tapped
            setState(() {
              backgroundColor =
              backgroundColor == Colors.white
                  ? Color(0xff132183)
                  : Colors.white;
            });
          },
          child: Column(
            children: [
              Container(
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: backgroundColor,
                ),
                child: Center(
                  child: Transform.scale(
                    scale: 1.7,
                    child: SvgPicture.asset(widget.icon),
                  ),
                ),
              ),
              Text(widget.text)
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriesPaymentHistoryWidget extends StatefulWidget {
  @override
  _CategoriesPaymentHistoryWidgetState createState() =>
      _CategoriesPaymentHistoryWidgetState();
}

class _CategoriesPaymentHistoryWidgetState
    extends State<CategoriesPaymentHistoryWidget> {
  List<bool> isSelectedList = [true, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      child: Row(
        children: [
          CategoriesWidget(
            'assets/Refresh (1).svg',
            'All',
            isSelectedList[0],
          ),
          CategoriesWidget(
            'assets/Arrow-Left.svg',
            'Send',
            isSelectedList[1],
          ),
          CategoriesWidget(
            'assets/Arrow-down.svg',
            'Receive',
            isSelectedList[2],
          ),
          CategoriesWidget(
            'assets/failed.svg',
            'Failed',
            isSelectedList[3],
          ),
        ],
      ),
    );
  }
}
